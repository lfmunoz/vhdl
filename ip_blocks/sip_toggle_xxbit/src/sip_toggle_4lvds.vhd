
-------------------------------------------------------------------------------------
-- FILE NAME : sip_lvds_reg.vhd
--
-- AUTHOR    : StellarIP (c) 4DSP
--
-- COMPANY   : 4DSP
--
-- ITEM      : 1
--
-- UNITS     : Entity       - sip_lvds_reg
--             architecture - arch_sip_lvds_reg
--
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- sip_lvds_reg
-- Notes: sip_lvds_reg
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

Library UNISIM;
use UNISIM.vcomponents.all;

-------------------------------------------------------------------------------------
--Entity Declaration
-------------------------------------------------------------------------------------
entity sip_toggle_4lvds  is
generic (
   global_start_addr_gen                   : std_logic_vector(27 downto 0);
   global_stop_addr_gen                    : std_logic_vector(27 downto 0);
   private_start_addr_gen                  : std_logic_vector(27 downto 0);
   private_stop_addr_gen                   : std_logic_vector(27 downto 0)
);
port (
--Wormhole 'clk' of type 'clkin':
   clk_clkin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'rst' of type 'rst_in':
   rst_rstin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'cmdclk_in' of type 'cmdclk_in':
   cmdclk_in_cmdclk                        : in    std_logic;

--Wormhole 'cmd_in' of type 'cmd_in':
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;

--Wormhole 'cmd_out' of type 'cmd_out':
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;

--Wormhole 'ext_lvds' of type 'ext_lvds':
   lvds_in_n                               : in std_logic_vector(1 downto 0);
   lvds_in_p                               : in std_logic_vector(1 downto 0);
   lvds_out_n                              : out std_logic_vector(1 downto 0);
   lvds_out_p                              : out std_logic_vector(1 downto 0)
);
end entity sip_toggle_4lvds;

-------------------------------------------------------------------------------------
--Architecture declaration
-------------------------------------------------------------------------------------
architecture behav of sip_toggle_4lvds  is

-------------------------------------------------------------------------------------
--Constants declaration
-------------------------------------------------------------------------------------
constant WIDTH : natural := 2;

-------------------------------------------------------------------------------------
--Signal declaration
-------------------------------------------------------------------------------------
signal clk          : std_logic;
signal rst          : std_logic;
signal lvds_in      : std_logic_vector(1 downto 0);
signal lvds_out     : std_logic_vector(1 downto 0);
signal reg0         : std_logic_vector(31 downto 0);
signal reg1         : std_logic_vector(31 downto 0);
signal reg2         : std_logic_vector(31 downto 0);

--***********************************************************************************
begin
--***********************************************************************************
clk <= cmdclk_in_cmdclk;

-------------------------------------------------------------------------------------
-- Local reset: asynchronous assert, synchronous release
-------------------------------------------------------------------------------------
process(clk, rst_rstin(2))
begin
    if rst_rstin(2) = '1' then
        rst <= '1'; 
    elsif rising_edge(clk) then
        rst <= '0'; 
    end if;
end process;

-------------------------------------------------------------------------------------
-- Command Registers
-------------------------------------------------------------------------------------
ip_block_ctrl_inst0: 
entity work.ip_block_ctrl 
generic map (
  START_ADDR         => private_start_addr_gen,
  STOP_ADDR          => private_stop_addr_gen
)
port map (
	rst         => rst,
	clk_cmd     => clk,
	in_cmd_val  => cmd_in_cmdin_val,
	in_cmd      => cmd_in_cmdin,
	out_cmd_val => cmd_out_cmdout_val,
	out_cmd     => cmd_out_cmdout,
	cmd_busy    => open,

	reg0        => reg0, --out
	reg1        => open, --out 
	reg2        => reg2, -- in
	reg3        => (others=>'0'), -- in
	reg4        => (others=>'0'), -- in
	reg5        => (others=>'0'), -- in
	reg6        => (others=>'0'), -- in
	mbx_in_reg  => (others=>'0'),
	mbx_in_val  => '0' 
);

--register map
process(clk) 
begin
    if rising_edge(clk) then
        lvds_out(1 downto 0) <= reg0(1 downto 0);    -- lvds output out of fpga pin
        reg2(1 downto 0)     <= lvds_in(1 downto 0); -- lvds input from fpga pin
    end if;
end process;

-------------------------------------------------------------------------------------
-- LVDS PHY
-------------------------------------------------------------------------------------
generate_width: 
for I in 0 to WIDTH-1 generate

    obufds_output : OBUFDS
    generic map (
       IOSTANDARD 		=> "DEFAULT", -- Specify the output I/O standard
       SLEW       		=> "SLOW"     -- Specify the output slew rate
    )         
    port map (
       O    => lvds_out_p(I), -- Diff_p output (connect directly to top-level port)
       OB   => lvds_out_n(I), -- Diff_n output (connect directly to top-level port)
       I    => lvds_out(I)    -- Buffer input 
    );
    
    ibufds_input : IBUFDS
    generic map (
    	DIFF_TERM 		=> FALSE, 	-- Differential Termination 
    	IBUF_LOW_PWR 	=> TRUE, 	-- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
    	IOSTANDARD 		=> "DEFAULT")
    port map (
    	O 	=> lvds_in(I),    -- Buffer output
    	I   => lvds_in_p(I),  -- Diff_p buffer input (connect directly to top-level port)
    	IB 	=> lvds_in_n(I)   -- Diff_n buffer input (connect directly to top-level port)
    );

end generate;

--***********************************************************************************
end architecture behav; 
--***********************************************************************************
