--------------------------------------------------------------------------------
-- file name : fmc144_stellar_cmd.vhd
--
-- author    : e. barhorst
--
-- company   : 4dsp
--
-- item      : number
--
-- units     : entity       -fmc144_stellar_cmd
--             arch_itecture - arch_fmc144_stellar_cmd
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
--      from
-- ver  pcb mod    date      changes
-- ===  =======    ========  =======
--
-- 0.0    0        19-01-2009        new version
--                 31-08-2009       added the mailbox input port
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

--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------

entity stellar_generic_cmd is
generic (
   START_ADDR   : std_logic_vector(27 downto 0) := x"0000000";
   STOP_ADDR    : std_logic_vector(27 downto 0) := x"0000010"
);
port (
   reset        : in  std_logic;
   -- Command interface
   clk_cmd      : in  std_logic;                    --cmd_in and cmd_out are synchronous to this clock;
   out_cmd      : out std_logic_vector(63 downto 0);
   out_cmd_val  : out std_logic;
   in_cmd       : in  std_logic_vector(63 downto 0);
   in_cmd_val   : in  std_logic;
   -- Register interface
   clk_reg      : in  std_logic;                    --register interface is synchronous to this clock
   out_reg      : out std_logic_vector(31 downto 0);--caries the out register data
   out_reg_val  : out std_logic;                    --the out_reg has valid data  (pulse)
   out_reg_addr : out std_logic_vector(27 downto 0);--out register address
   in_reg       : in  std_logic_vector(31 downto 0);--requested register data is placed on this bus
   in_reg_val   : in  std_logic;                    --pulse to indicate requested register is valid
   in_reg_req   : out std_logic;                    --pulse to request data
   in_reg_addr  : out std_logic_vector(27 downto 0);--requested address
   -- Mailbox interface
   mbx_in_reg   : in  std_logic_vector(31 downto 0);--value of the mailbox to send
   mbx_in_val   : in  std_logic                     --pulse to indicate mailbox is valid
);
end entity stellar_generic_cmd;

--------------------------------------------------------------------------------
-- Architecture declaration
--------------------------------------------------------------------------------

architecture arch_stellar_cmd of stellar_generic_cmd is

-----------------------------------------------------------------------------------
-- Constant declarations
-----------------------------------------------------------------------------------
constant CMD_WR      : std_logic_vector(3 downto 0) := x"1";
constant CMD_RD      : std_logic_vector(3 downto 0) := x"2";
constant CMD_RD_ACK  : std_logic_vector(3 downto 0) := x"4";

-----------------------------------------------------------------------------------
-- Dignal declarations
-----------------------------------------------------------------------------------
signal register_wr     : std_logic;
signal register_rd     : std_logic;
signal out_cmd_val_sig : std_logic;
signal in_reg_addr_sig : std_logic_vector(27 downto 0);

signal mbx_in_val_sig  : std_logic;
signal mbx_received    : std_logic;

-----------------------------------------------------------------------------------
-- Component declarations
-----------------------------------------------------------------------------------
component pulse2pulse
port (
   in_clk   : in  std_logic;
   out_clk  : in  std_logic;
   rst      : in  std_logic;
   pulsein  : in  std_logic;
   inbusy   : out std_logic;
   pulseout : out std_logic
);
end component;

-----------------------------------------------------------------------------------
-- Begin
-----------------------------------------------------------------------------------
begin

-----------------------------------------------------------------------------------
-- Component instantiations
-----------------------------------------------------------------------------------
p2p0: pulse2pulse
port map (
   in_clk   => clk_cmd,
   out_clk  => clk_reg,
   rst      => reset,
   pulsein  => register_wr,
   inbusy   => open,
   pulseout => out_reg_val
);

p2p1: pulse2pulse
port map (
   in_clk   => clk_cmd,
   out_clk  => clk_reg,
   rst      => reset,
   pulsein  => register_rd,
   inbusy   => open,
   pulseout => in_reg_req
);

p2p2: pulse2pulse
port map (
   in_clk   => clk_reg,
   out_clk  => clk_cmd,
   rst      => reset,
   pulsein  => in_reg_val,
   inbusy   => open,
   pulseout => out_cmd_val_sig
);

p2p3: pulse2pulse
port map (
  in_clk   => clk_reg,
  out_clk  => clk_cmd ,
  rst      => reset,
  pulsein  => mbx_in_val,
  inbusy   => open,
  pulseout => mbx_in_val_sig
);

-----------------------------------------------------------------------------------
-- Synchronous processes
-----------------------------------------------------------------------------------
in_reg_proc: process (reset, clk_cmd)
begin
   if (reset = '1') then
      in_reg_addr_sig <= (others => '0');
      register_rd     <= '0';
      mbx_received    <= '0';
      out_cmd         <= (others => '0');
      out_cmd_val     <= '0';

   elsif (clk_cmd'event and clk_cmd = '1') then

      --register the requested address when the address is in the modules range
      if (in_cmd_val = '1' and in_cmd(63 downto 60) = CMD_RD and in_cmd(59 downto 32) >= start_addr and in_cmd(59 downto 32) <= stop_addr) then
         in_reg_addr_sig <= in_cmd(59 downto 32)-start_addr;
      end if;

      --generate the read req pulse when the address is in the modules range
      if (in_cmd_val = '1' and in_cmd(63 downto 60) = CMD_RD and in_cmd(59 downto 32) >= start_addr and in_cmd(59 downto 32) <= stop_addr) then
         register_rd <= '1';
      else
         register_rd <= '0';
      end if;

      --mailbox has less priority then command acknowledge
      --create the output packet
      if (out_cmd_val_sig = '1' and mbx_in_val_sig = '1') then
         mbx_received <= '1';
      elsif( mbx_received = '1' and out_cmd_val_sig = '0') then
         mbx_received <= '0';
      end if;

      if (out_cmd_val_sig = '1') then
         out_cmd(31 downto 0)  <= in_reg;
         out_cmd(59 downto 32) <= in_reg_addr_sig+start_addr;
         out_cmd(63 downto 60) <= CMD_RD_ACK;
      elsif (mbx_in_val_sig = '1' or mbx_received = '1') then
         out_cmd(31 downto 0)  <= mbx_in_reg;
         out_cmd(59 downto 32) <= start_addr;
         out_cmd(63 downto 60) <= (others=>'0');
      else
         out_cmd(63 downto 0)  <= (others=>'0');
      end if;

      if (out_cmd_val_sig = '1') then
         out_cmd_val <= '1';
      elsif (mbx_in_val_sig = '1' or mbx_received = '1') then
         out_cmd_val <= '1';
      else
         out_cmd_val <= '0';
      end if;

   end if;
end process;

out_reg_proc: process(reset, clk_cmd)
begin
   if (reset = '1') then
      out_reg_addr <= (others => '0');
      out_reg      <= (others => '0');
      register_wr  <= '0';

   elsif(clk_cmd'event and clk_cmd = '1') then

      --register the requested address when the address is in the modules range
      if (in_cmd_val = '1' and in_cmd(63 downto 60) = CMD_WR and in_cmd(59 downto 32) >= start_addr and in_cmd(59 downto 32) <= stop_addr) then
         out_reg_addr <= in_cmd(59 downto 32) - start_addr;
         out_reg      <= in_cmd(31 downto 0);
      end if;

      --generate the write req pulse when the address is in the modules range
      if (in_cmd_val = '1' and in_cmd(63 downto 60) = CMD_WR and in_cmd(59 downto 32) >= start_addr and in_cmd(59 downto 32) <= stop_addr) then
         register_wr <= '1';
      else
         register_wr <= '0';
      end if;

   end if;
end process;

-----------------------------------------------------------------------------------
-- Asynchronous mapping
-----------------------------------------------------------------------------------
in_reg_addr <= in_reg_addr_sig;

-----------------------------------------------------------------------------------
-- End
-----------------------------------------------------------------------------------

end architecture arch_stellar_cmd;

