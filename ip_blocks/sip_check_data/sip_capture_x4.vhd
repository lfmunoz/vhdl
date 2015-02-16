
-------------------------------------------------------------------------------------
-- FILE NAME : sip_capture_4x.vhd
--
-- AUTHOR    : StellarIP (c) 4DSP
--
-- COMPANY   : 4DSP
--
-- ITEM      : 1
--
-- UNITS     : Entity       - sip_mem_if_i
--             architecture - arch_sip_mem_if_i
--
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- Data comes in on in0 and it is multiplexed sequentially between out0 and out1
-- Data comes in on in1 and it is multiplexed sequentially between out2 and out3
-- Data comes in on in2 and if we are in mode = 0, it goes to out4 but converted from 64-bit to 128-bit
-- Data comes in on in3 and if we are in mode = 0 it is dropped stop will be held = 0. If we are in mode = 1 
--   data must also come in on in2 because they are combined and go into out4.

-- sip_mem_if_i
-- Notes: sip_mem_if_i
-------------------------------------------------------------------------------------
--  Disclaimer: LIMITED WARRANTY AND DISCLAIMER. These designs are
--              provided to you as is.  4DSP specifically disclaims any
--              implied warranties of merchantability, non-infringement, or
--              fitness for a particular purpose. 4DSP does not warrant that
--              the functions contained in these designs will meet your
--              requirements, or that the operation of these designs will be
--              uninterrupted or error free, or that defects in the Designs
--              will be corrected. Furthermore, 4DSP does not warrant or
--              make any representations regarding use or the results of the
--              use of the designs in terms of correctness, accuracy,
--              reliability, or otherwise.
--
--              LIMITATION OF LIABILITY. In no event will 4DSP or its
--              licensors be liable for any loss of data, lost profits, cost
--              or procurement of substitute goods or services, or for any
--              special, incidental, consequential, or indirect damages
--              arising from the use or operation of the designs or
--              accompanying documentation, however caused and on any theory
--              of liability. This limitation will apply even if 4DSP
--              has been advised of the possibility of such damage. This
--              limitation shall apply not-withstanding the failure of the
--              essential purpose of any limited remedies herein.
--
----------------------------------------------
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
--library declaration
-------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_misc.all ;

-------------------------------------------------------------------------------------
--Entity Declaration
-------------------------------------------------------------------------------------
entity sip_capture_x4  is
generic (
   global_start_addr_gen                   : std_logic_vector(27 downto 0);
   global_stop_addr_gen                    : std_logic_vector(27 downto 0);
   private_start_addr_gen                  : std_logic_vector(27 downto 0);
   private_stop_addr_gen                   : std_logic_vector(27 downto 0)
);
port (
--Wormhole 'cmdclk_in' of type 'cmdclk_in':
   cmdclk_in_cmdclk                        : in    std_logic;

--Wormhole 'cmd_in' of type 'cmd_in':
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;

--Wormhole 'cmd_out' of type 'cmd_out':
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;

--Wormhole 'clk' of type 'clkin':
   clk_clkin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'rst' of type 'rst_in':
   rst_rstin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'out0' of type 'wh_out':
   out0_out_stop                           : in    std_logic;
   out0_out_dval                           : out   std_logic;
   out0_out_data                           : out   std_logic_vector(63 downto 0);

--Wormhole 'out1' of type 'wh_out':
   out1_out_stop                           : in    std_logic;
   out1_out_dval                           : out   std_logic;
   out1_out_data                           : out   std_logic_vector(63 downto 0);

--Wormhole 'out2' of type 'wh_out':
   out2_out_stop                           : in    std_logic;
   out2_out_dval                           : out   std_logic;
   out2_out_data                           : out   std_logic_vector(63 downto 0);

--Wormhole 'out3' of type 'wh_out':
   out3_out_stop                           : in    std_logic;
   out3_out_dval                           : out   std_logic;
   out3_out_data                           : out   std_logic_vector(63 downto 0);

--Wormhole 'in0' of type 'wh_in':
   in0_in_stop                             : out   std_logic;
   in0_in_dval                             : in    std_logic;
   in0_in_data                             : in    std_logic_vector(63 downto 0);

--Wormhole 'in1' of type 'wh_in':
   in1_in_stop                             : out   std_logic;
   in1_in_dval                             : in    std_logic;
   in1_in_data                             : in    std_logic_vector(63 downto 0);

--Wormhole 'in2' of type 'wh_in':
   in2_in_stop                             : out   std_logic;
   in2_in_dval                             : in    std_logic;
   in2_in_data                             : in    std_logic_vector(63 downto 0);

--Wormhole 'in3' of type 'wh_in':
   in3_in_stop                             : out   std_logic;
   in3_in_dval                             : in    std_logic;
   in3_in_data                             : in    std_logic_vector(63 downto 0)
 );
end entity sip_capture_x4;

-------------------------------------------------------------------------------------
--Architecture declaration
-------------------------------------------------------------------------------------
architecture bev of sip_capture_x4  is

-------------------------------------------------------------------------------------
--Constants declaration
-------------------------------------------------------------------------------------
type bus64 is array(natural range <>) of std_logic_vector(63 downto 0);
type bus12 is array(natural range <>) of std_logic_vector(11 downto 0);
type bus08 is array(natural range <>) of std_logic_vector(7 downto 0);

attribute keep : string;

-------------------------------------------------------------------------------------
--Signal declaration
-------------------------------------------------------------------------------------
signal clk_in           : std_logic;
signal clk_out          : std_logic;
signal rst              : std_logic;
signal local_reset      : std_logic;
signal fifo_in          : bus64(3 downto 0);
signal fifo_out         : bus64(3 downto 0);
signal fifo_wr_en       : std_logic_vector(3 downto 0);
signal fifo_valid       : std_logic_vector(3 downto 0);
signal fifo_rd_en       : std_logic_vector(3 downto 0);
signal fifo_empty       : std_logic_vector(3 downto 0);
signal fifo_full        : std_logic_vector(3 downto 0);
signal fifo_count       : bus12(3 downto 0);
signal register0        : std_logic_vector(31 downto 0);
signal register1        : std_logic_vector(31 downto 0);
signal register0_r      : std_logic_vector(31 downto 0);
signal register1_r      : std_logic_vector(31 downto 0);
signal register2        : std_logic_vector(31 downto 0);
signal register3        : std_logic_vector(31 downto 0);
signal register4        : std_logic_vector(31 downto 0);
signal register5        : std_logic_vector(31 downto 0);
signal register6        : std_logic_vector(31 downto 0);
signal register7        : std_logic_vector(31 downto 0);
signal register8        : std_logic_vector(31 downto 0);
signal align_fifo_in    : bus64(3 downto 0);
signal align_fifo_out   : bus64(3 downto 0);
signal align_fifo_wr_en : std_logic_vector(3 downto 0);
signal align_fifo_valid : std_logic_vector(3 downto 0);
signal align_fifo_empty : std_logic_vector(3 downto 0);
signal align_fifo_rd_en : std_logic;
signal byte_align_out   : bus64(3 downto 0);
signal byte_align_valid : std_logic_vector(3 downto 0);
signal status           : bus08(3 downto 0);
signal check_reset      : std_logic;
signal check_enable     : std_logic;
signal perfomance_reset : std_logic;
signal performance_en   : std_logic;
signal force_error      : std_logic_vector(3 downto 0);
signal input_count      : std_logic_vector(63 downto 0);
signal cycle_count      : std_logic_vector(63 downto 0);
signal output_count     : std_logic_vector(63 downto 0);

----------------------------------------------------------------------------------------
-- Debugging 
---------------------------------------------------------------------------------------
COMPONENT ila_0
  PORT (
    clk : IN STD_LOGIC;
    probe0 : IN STD_LOGIC_VECTOR(255 DOWNTO 0)
  );
END COMPONENT;
ATTRIBUTE SYN_BLACK_BOX : BOOLEAN;
ATTRIBUTE SYN_BLACK_BOX OF ila_0 : COMPONENT IS TRUE;
ATTRIBUTE BLACK_BOX_PAD_PIN : STRING;
ATTRIBUTE BLACK_BOX_PAD_PIN OF ila_0 : COMPONENT IS "clk,probe0[255:0]";

signal probe0     : std_logic_vector(255 downto 0);
signal dbg_data0  : std_logic_vector(63 downto 0);
signal dbg_data1  : std_logic_vector(63 downto 0);
signal dbg_data2  : std_logic_vector(63 downto 0);
signal dbg_valid0 : std_logic;
signal dbg_valid1 : std_logic;
signal dbg_valid2 : std_logic;

attribute keep of dbg_data1  : signal is "true";
attribute keep of dbg_data2  : signal is "true";
attribute keep of dbg_data0  : signal is "true";
attribute keep of dbg_valid0 : signal is "true";
attribute keep of dbg_valid1 : signal is "true";
attribute keep of dbg_valid2 : signal is "true";

--***********************************************************************************
begin
--***********************************************************************************
clk_in  <= clk_clkin(13);
clk_out <= clk_clkin(14);
rst     <= rst_rstin(2);

-------------------------------------------------------------------------------------
-- Local reset
-------------------------------------------------------------------------------------
process(clk_in)
begin
   if rst = '1' then
     local_reset  <= '1';
   elsif rising_edge(clk_in) then
	 local_reset  <= '0';
   end if;
end process;

-------------------------------------------------------------------------------------
-- Align Input
-------------------------------------------------------------------------------------
process(clk_in)
begin
   if rising_edge(clk_in) then

        if force_error(0) = '1' then
            align_fifo_in(0)	<= (others=>'0');
        else
            align_fifo_in(0)	<= in0_in_data;
        end if;

        if force_error(1) = '1' then
            align_fifo_in(1)	<= (others=>'0');
        else
            align_fifo_in(1)	<= in1_in_data;
        end if;

        if force_error(2) = '1' then
            align_fifo_in(2)	<= (others=>'0');
        else
            align_fifo_in(2)	<= in2_in_data;
        end if;

        if force_error(3) = '1' then
            align_fifo_in(3)	<= (others=>'0');
        else
            align_fifo_in(3)	<= in3_in_data;
        end if;

        align_fifo_wr_en(0) <= in0_in_dval;
        align_fifo_wr_en(1) <= in1_in_dval;
        align_fifo_wr_en(2) <= in2_in_dval;
        align_fifo_wr_en(3) <= in3_in_dval;

   end if;
end process;

in0_in_stop   <= '0';
in1_in_stop   <= '0';
in2_in_stop   <= '0';
in3_in_stop   <= '0';

alignment_generate:
for I in 0 to 3 generate

    async_fifo_align_64in_out_inst0: 
    entity work.async_fifo_align_64in_out
    port map (
        clk   => clk_in,
        rst   => local_reset,
        din   => align_fifo_in(I),
        wr_en => align_fifo_wr_en(I),
        rd_en => align_fifo_rd_en,
        dout  => align_fifo_out(I),
        full  => open,
        empty => align_fifo_empty(I),
        valid => align_fifo_valid(I)
    );

    byte_align0:
    entity work.data_align
    port map (
        clk_in   => clk_in,
        rst_in   => local_reset,
        data_in  => align_fifo_out(I),
        val_in   => align_fifo_valid(I),
        data_out => byte_align_out(I),
        val_out  => byte_align_valid(I)
    );

    --  Data Check
    data_check_0:
    entity work.data_check
    port map (
        clk_in      => clk_in,
        rst_in      => check_reset,
        data_in     => byte_align_out(I),
        valid_in    => byte_align_valid(I),
        check_en_in => check_enable,
        status_out  => status(I)
    );

end generate;

align_fifo_rd_en <= not or_reduce(align_fifo_empty); 

-------------------------------------------------------------------------------------------
-- Performance Measure
-------------------------------------------------------------------------------------------
performance_inst0: 
entity work.performance 
port map(
   clk_in      => clk_in,
   rst_in      => perfomance_reset,
   start_in    => performance_en, 
   in_val      => '0',
   out_val     => align_fifo_valid(0), --fifo_wr,
   in_cnt      => input_count, -- out
   cycle_cnt   => cycle_count, -- out
   out_cnt     => output_count -- out
);

-------------------------------------------------------------------------------------
-- Capture incomming data
-------------------------------------------------------------------------------------
fifo_generate:
for I in 0 to 3 generate
    fifo_64in_out_inst0 : entity work.fifo_64in_out
      PORT MAP (
        wr_clk  => clk_in,
        rd_clk  => clk_out,
        rst     => local_reset,
        din     => align_fifo_in(I),
        wr_en   => align_fifo_wr_en(I),
        rd_en   => fifo_rd_en(I),
        dout    => fifo_out(I),
        full    => fifo_full(I),
        empty   => fifo_empty(I),
        valid   => fifo_valid(I),
        rd_data_count => fifo_count(I)
      );
end generate;

fifo_rd_en(0) <= (not fifo_empty(0) and not out0_out_stop);
fifo_rd_en(1) <= (not fifo_empty(1) and not out1_out_stop);
fifo_rd_en(2) <= (not fifo_empty(2) and not out2_out_stop);
fifo_rd_en(3) <= (not fifo_empty(3) and not out3_out_stop);

-------------------------------------------------------------------------------------
-- register outputs
-------------------------------------------------------------------------------------
process(clk_out)
begin
   if rising_edge(clk_out) then
         out0_out_dval     <= fifo_valid(0);
         out0_out_data     <= fifo_out(0);       
         out1_out_dval     <= fifo_valid(1);
         out1_out_data     <= fifo_out(1);
         out2_out_dval     <= fifo_valid(2);
         out2_out_data     <= fifo_out(2);
         out3_out_dval     <= fifo_valid(3);
         out3_out_data     <= fifo_out(3);
   end if;
end process;

-------------------------------------------------------------------------------------
-- Command Interface
-------------------------------------------------------------------------------------
ip_block_ctrl_inst0: entity work.ip_block_ctrl 
generic map (
  START_ADDR      => private_start_addr_gen,
  STOP_ADDR       => private_stop_addr_gen
)
port map(
    rst          => rst,
    clk_cmd      => clk_out,
    in_cmd_val   => cmd_in_cmdin_val,
    in_cmd       => cmd_in_cmdin,
    out_cmd_val  => cmd_out_cmdout_val,
    out_cmd      => cmd_out_cmdout,
    cmd_busy     => open,
    reg0         => register0, -- out
    reg1         => register1, -- out 
    reg2         => register2, -- in 
    reg3         => register3, -- in 
    reg4         => register4, -- in 
    reg5         => register5, -- in 
    reg6         => register6, -- in 
    reg7         => register7, -- in 
    reg8         => register8, -- in 
    mbx_in_reg   => (others=>'0'), -- in 
    mbx_in_val   => '0' -- in 

);

-- register mapping synth clock domain
process(clk_in)
begin
   if rising_edge(clk_in) then
        register0_r         <= register0;
        register1_r         <= register1;
        check_reset         <= register0_r(0);
        perfomance_reset    <= register0_r(4);
        check_enable        <= register1_r(0);
        performance_en      <= register1_r(4); 
        force_error         <= register1_r(11 downto 8);
   end if;
end process;

-- register mapping command clock domain
process(clk_out)
begin
   if rising_edge(clk_out) then
        register2 <= status(3) & status(2) & status(1) & status(0);
        register3 <= cycle_count(31 downto 0); -- cycle count LSB
        register4 <= output_count(31 downto 0); -- output count LSB
        register5 <= cycle_count(63 downto 32); -- cycle count MSB
        register6 <= output_count(63 downto 32); -- output count MSB
        register7 <= "0001" & fifo_count(1) & "0000" & fifo_count(0);
        register8 <= "0011" & fifo_count(3) & "0010" & fifo_count(2);
   end if;
end process;

-------------------------------------------------------------------------------------
-- Debug Section 
-------------------------------------------------------------------------------------
--ila_inst0 : ila_0
--  PORT MAP (
--    clk => clk_in,
--    probe0 => probe0
--  );
--
--process(clk_in)
--begin
--    if rising_edge(clk_in) then
--        dbg_data0   <= byte_align_out(0);
--        dbg_data1   <= byte_align_out(1);
--        dbg_data2   <= byte_align_out(2);
--        dbg_valid0  <= align_fifo_valid(0);
--        dbg_valid1  <= align_fifo_valid(1);
--        dbg_valid2  <= align_fifo_valid(2);
--    end if;
--end process;
--
--probe0(63 downto 0)     <= dbg_data0;
--probe0(127 downto 64)   <= dbg_data1;
--probe0(191 downto 128)  <= dbg_data2;
--probe0(192) <= dbg_valid0;
--probe0(193) <= dbg_valid1;
--probe0(194) <= dbg_valid2;
--probe0(255 downto 195) <= (others=>'0');

--***********************************************************************************
end architecture bev; 
--***********************************************************************************
