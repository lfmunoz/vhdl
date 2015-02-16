--------------------------------------------------------------------------------
-- file name : sip_vp680_host_if.vhd
--
-- author    : P. Kortekaas
--
-- company   : 4dsp
--
-- item      : number
--
-- language  : vhdl
--
--------------------------------------------------------------------------------
-- description
-- ===========
--
--
-- notes:
--------------------------------------------------------------------------------
--
--  disclaimer: limited warranty and disclaimer. these designs are
--              provided to you as is.  4dsp specifically disclaims any
--              implied warranties of merchantability, non-infringement, or
--              fitness for a particular purpose. 4dsp does not warrant that
--              the functions contained in these designs will meet your
--              requirements, or that the operation of these designs will be
--              uninterrupted or error free, or that defects in the designs
--              will be corrected. furthermore, 4dsp does not warrant or
--              make any representations regarding use or the results of the
--              use of the designs in terms of correctness, accuracy,
--              reliability, or otherwise.
--
--              limitation of liability. in no event will 4dsp or its
--              licensors be liable for any loss of data, lost profits, cost
--              or procurement of substitute goods or services, or for any
--              special, incidental, consequential, or indirect damages
--              arising from the use or operation of the designs or
--              accompanying documentation, however caused and on any theory
--              of liability. this limitation will apply even if 4dsp
--              has been advised of the possibility of such damage. this
--              limitation shall apply not-withstanding the failure of the
--              essential purpose of any limited remedies herein.
--
----------------------------------------------
--
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- Specify libraries
--------------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_1164.all;
library std;
  use std.textio.all;
library work;
  use work.txt_util.all;
  use work.std_logic_textio.all;

--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity generic_host_emu is
generic (
   global_start_addr_gen                   : std_logic_vector(27 downto 0);
   global_stop_addr_gen                    : std_logic_vector(27 downto 0);
   private_start_addr_gen                  : std_logic_vector(27 downto 0);
   private_stop_addr_gen                   : std_logic_vector(27 downto 0)
);
port (
--Wormhole 'cmdclk_out' of type 'cmdclk_out':
   cmdclk_out_cmdclk                       : out   std_logic;

--Wormhole 'cmd_in' of type 'cmd_in':
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;

--Wormhole 'cmd_out' of type 'cmd_out':
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;

--Wormhole 'ifpga_rst_out' of type 'ifpga_rst_out':
   ifpga_rst_out_ifpga_rst                 : out   std_logic;

--Wormhole 'clk' of type 'clkin':
   clk_clkin                               : in    std_logic_vector(31 downto 0);
--Wormhole 'rst' of type 'rst_in':
   rst_rstin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'ext_vp680_host_if' of type 'ext_vp680_host_if':
   sys_clk                                 : in    std_logic;
   sys_reset_n                             : in    std_logic;


--Wormhole 'in_data' of type 'wh_in':
   in_data_in_stop                         : out   std_logic;
   in_data_in_dval                         : in    std_logic;
   in_data_in_data                         : in    std_logic_vector(63 downto 0);

--Wormhole 'out_data' of type 'wh_out':
   out_data_out_stop                       : in    std_logic;
   out_data_out_dval                       : out   std_logic;
   out_data_out_data                       : out   std_logic_vector(63 downto 0)
);
end entity generic_host_emu;

--------------------------------------------------------------------------------
-- Architecture declaration
--------------------------------------------------------------------------------
architecture behavioral of generic_host_emu is

--------------------------------------------------------------------------------
-- Constant declarations
--------------------------------------------------------------------------------

type std2d_32b is array(natural range <>) of std_logic_vector(31 downto 0);
-----------------------------------------------------------------------------------
-- Signal declarations
-----------------------------------------------------------------------------------
signal clk_cmd        : std_logic := '0';
signal clk125m        : std_logic := '0';

signal out_cmd_val    : std_logic := '0';
signal out_cmd        : std_logic_vector(63 downto 0) := (others => '0');
signal in_cmd_val     : std_logic;
signal in_cmd         : std_logic_vector(63 downto 0);

signal write_data_val : std_logic := '0';
signal write_data     : std_logic_vector(63 downto 0) := (others => '0');

signal read_data_stop : std_logic := '1';
signal read_data_val  : std_logic;
signal read_data      : std_logic_vector(63 downto 0);

-----------------------------------------------------------------------------------
-- Component declarations
-----------------------------------------------------------------------------------

begin

--------------------------------------------------------------------------------
-- Clock generation
--------------------------------------------------------------------------------
clk_cmd <= sys_clk;
clk125m <= sys_clk;

--------------------------------------------------------------------------------
-- Perform SIP register read and writes
--------------------------------------------------------------------------------
process

  file CMD_SCRIPT          : text;
  file INPUT_FILE          : text;
  variable BAR_array       :std2d_32b(15 downto 0);
  variable BAR_idx         :integer range 16 downto 0 :=0;
  variable textline        : line;
  variable sip_command     : string(1 to 80);
  variable char1           : string(1 to 1);
  variable WaitDelay       : integer := 0;
  variable sip_addr        : std_logic_vector(31 downto 0);
  variable sip_bar_idx     : std_logic_vector(3 downto 0);
  variable sip_data        : std_logic_vector(31 downto 0);
  variable dmapush_size    : std_logic_vector(31 downto 0);
  variable dmapull_size    : std_logic_vector(31 downto 0);

  -- Procedure for writing a register
  procedure cmd_write(addr : in std_logic_vector(31 downto 0); data : in std_logic_vector(31 downto 0)) is
  begin

    wait until clk_cmd = '0';
    out_cmd_val <= '1';
    out_cmd     <= x"1" & addr(27 downto 0) & data;
    wait until clk_cmd = '1';
    wait until clk_cmd = '0';
    out_cmd_val <= '0';

    REPORT "CMD Write: ADDR 0x" & hstr(addr) & " DATA " & str(conv_integer(data));

  end procedure cmd_write;

  -- Procedure for reading a register
  procedure cmd_read(addr : in std_logic_vector(31 downto 0); data : inout std_logic_vector(31 downto 0)) is
  begin

    wait until clk_cmd = '0';
    out_cmd_val <= '1';
    out_cmd     <= x"2" & addr(27 downto 0) & conv_std_logic_vector(0, 32);
    wait until clk_cmd = '1';
    wait until clk_cmd = '0';
    out_cmd_val <= '0';

    wait until in_cmd_val = '1';
    data := in_cmd(31 downto 0);

    REPORT "CMD Read: ADDR 0x" & hstr(addr) & " DATA " & str(conv_integer(data));

  end procedure cmd_read;

  -- Procedure for pushing DMA to FPGA B
  procedure dma_push(dma_size : in std_logic_vector(31 downto 0)) is
    variable textline  : line;
    variable size      : integer;
    variable dma_data  : std_logic_vector(63 downto 0);
  begin

    size := conv_integer(dma_size);

    while (size > 0) loop
      wait until clk125m = '0';
      --if (in0_stop = '0') then
        readline(INPUT_FILE, textline);
        hread(textline, dma_data);
        write_data_val <= '1';
        write_data <= dma_data;
        wait until clk125m = '1';
        wait until clk125m = '0';
        write_data_val <= '0';
        size := size - 8;
      --end if;
    end loop;

    REPORT "DMA Push, Size " & str(conv_integer(dma_size)) & " bytes";

  end procedure dma_push;

  -- Procedure for pulling DMA from FPGA B
  procedure dma_pull(dma_size : in std_logic_vector(31 downto 0)) is
    variable size      : integer;
  begin

    -- This precedure only pulls down the stop signal for the right amount of time
    -- data that comes available is written to file by the "Write data to file"
    -- process elsewhere in this file.

    size := conv_integer(dma_size);

    -- Start reading fast, untill 8 words (64 bytes) left
    while (size > 64) loop
      wait until clk125m = '1';
      read_data_stop <= '0';
      if (read_data_val = '1') then
        size := size - 8;
      end if;
      wait until clk125m = '0';
    end loop;

    -- Read the last words slowly
    while (size > 0) loop
      wait until clk125m = '1';
      read_data_stop <= '0';
      if (read_data_val = '1') then
        size := size - 8;
      end if;
      wait until clk125m = '0';
      wait until clk125m = '1';
      read_data_stop <= '1';
      if (read_data_val = '1') then
        size := size - 8;
      end if;
      wait until clk125m = '0';
      wait until clk125m = '1';
      if (read_data_val = '1') then
        size := size - 8;
      end if;
      wait until clk125m = '0';
    end loop;
    read_data_stop <= '1';

    REPORT "DMA Pull, Size " & str(conv_integer(dma_size)) & " bytes";

  end procedure dma_pull;

   variable fstatus: file_open_status; -- declare file
   variable sip_mode:std_logic:='0';
begin
   --script should start with 16 BAR definitions
    for i in 1 to 15 loop
      BAR_array(i) := (others=>'0');
    end loop;
    BAR_idx :=0;
  wait for 1 us;

  --open advanced sip script which is not compatible with the software sip script parser
  file_open(fstatus,CMD_SCRIPT, "sip_cmd.asip", read_mode);
  if (fstatus=OPEN_OK) then
   sip_mode :='1';
  else
   file_open(fstatus,CMD_SCRIPT, "sip_cmd.sip", read_mode);
   sip_mode := '0';
  end if;
  file_open(INPUT_FILE, "input.txt", read_mode);

  while not endfile(CMD_SCRIPT) loop

    readline(CMD_SCRIPT, textline);
    next when textline'length = 0;  -- Skip empty lines

    -- Reset command
    for i in 1 to sip_command'length loop
      sip_command(i to i) := " ";
    end loop;

    -- Read command
    for i in 1 to sip_command'length loop
      -- Exit when exeeding the number of characters on the line
      exit when i > textline'length;
      read(textline, sip_command(i to i));

      -- Comment
      if (sip_command(1 to 1) = ";") then
        read(textline, sip_command(1 to textline'length));
        REPORT(sip_command) SEVERITY warning;
        exit;
      end if;

      if(sip_mode='1') then
         --assign to next BAR
         if (sip_command(1 to 7) = "BAR_ADR") then
           -- Collect address
           char1 := " ";
           while (char1 /= "x") loop
             read(textline, char1);
           end loop;
           hread(textline, BAR_array(BAR_idx));
           BAR_idx := BAR_idx + 1;
           exit;
         end if;
      end if;
      -- Write access
      if (sip_command(1 to 7) = "REG_SET") then
        -- Collect address
        char1 := " ";
        while (char1 /= "x") loop
          read(textline, char1);
        end loop;
        hread(textline, sip_addr);
        -- Collect data
        char1 := " ";
        while (char1 /= "x") loop
          read(textline, char1);
        end loop;
        hread(textline, sip_data);
        if(sip_mode='1') then
           -- Collect BAR index
           char1 := " ";
           while (char1 /= "x") loop
             read(textline, char1);
           end loop;
           hread(textline, sip_bar_idx);
        -- Write
           cmd_write(sip_addr+BAR_array(conv_integer(sip_bar_idx)), sip_data);
         else
        cmd_write(sip_addr, sip_data);
         end if;
        exit;
      end if;

      -- Read access
      if (sip_command(1 to 7) = "REG_GET") then
        -- Collect address
        char1 := " ";
        while (char1 /= "x") loop
          read(textline, char1);
        end loop;
        hread(textline, sip_addr);
        if(sip_mode='1') then
           -- Collect BAR index
           char1 := " ";
           while (char1 /= "x") loop
             read(textline, char1);
           end loop;
           hread(textline, sip_bar_idx);
        -- Read
           cmd_read(sip_addr+BAR_array(conv_integer(sip_bar_idx)), sip_data);
        else
        cmd_read(sip_addr, sip_data);
        end if;
        exit;
      end if;

      -- DMA Push access (from host to card)
      if (sip_command(1 to 7) = "DMAPUSH") then
        -- Collect size
        char1 := " ";
        while (char1 /= "x") loop
          read(textline, char1);
        end loop;
        hread(textline, dmapush_size);
        -- DMA to FPGA B
        dma_push(dmapush_size);
        exit;
      end if;

      -- DMA Pull access (from card to host)
      if (sip_command(1 to 7) = "DMAPULL") then
        -- Collect size
        char1 := " ";
        while (char1 /= "x") loop
          read(textline, char1);
        end loop;
        hread(textline, dmapull_size);
        -- DMA from FPGA B
        dma_pull(dmapull_size);
        exit;
      end if;

      -- Wait
      if (sip_command(1 to 4) = "WAIT") then
        char1 := " ";
        while (char1 /= "=") loop
          read(textline, char1);
        end loop;
        read(textline, WaitDelay);
        REPORT("Wait for " & str(WaitDelay) & " us");
        for i in 1 to WaitDelay loop
          wait for 1 us;
        end loop;
        exit;
      end if;

    end loop;

    wait for 1 us;

  end loop;

  file_close(CMD_SCRIPT);
  file_close(INPUT_FILE);

  REPORT("Ready with reading SIP CMD script!");

  wait for 10 us;

  REPORT "Testbench ended" severity warning;
  wait;

end process;

--------------------------------------------------------------------------------
-- Write data to file
--------------------------------------------------------------------------------
process

  file OUTPUT_FILE  : text;
  variable textline : line;

begin

  file_open(OUTPUT_FILE, "output.txt", write_mode);
  file_close(OUTPUT_FILE);

  while true loop

    wait until clk125m = '1';
    if (read_data_val = '1') then
      file_open(OUTPUT_FILE, "output.txt", append_mode);
      hwrite(textline, read_data);
      writeline(OUTPUT_FILE, textline);
      file_close(OUTPUT_FILE);
    end if;
    wait until clk125m = '0';

  end loop;

  wait;

end process;

--------------------------------------------------------------------------------
-- Connect entity
--------------------------------------------------------------------------------

--Wormhole 'cmdclk_out' of type 'cmdclk_out':
   cmdclk_out_cmdclk                       <= clk_cmd;

--Wormhole 'cmd_out' of type 'cmd_out':
   cmd_out_cmdout                          <= out_cmd;
   cmd_out_cmdout_val                      <= out_cmd_val;

--Wormhole 'cmd_in' of type 'cmd_in':
   in_cmd                                  <= cmd_in_cmdin;
   in_cmd_val                              <= cmd_in_cmdin_val;

--Wormhole 'ext_fc6301_host_if' of type 'ext_fc6301_host_if':

   ifpga_rst_out_ifpga_rst                 <= not sys_reset_n;


--Wormhole 'in_data' of type 'wh_in':
   in_data_in_stop                         <= read_data_stop;
   read_data_val                           <= in_data_in_dval;
   read_data                               <= in_data_in_data;

--Wormhole 'out_data' of type 'wh_out':
   out_data_out_dval                       <= write_data_val;
   out_data_out_data                       <= write_data;

--------------------------------------------------------------------------------
-- End
--------------------------------------------------------------------------------
end architecture behavioral;

