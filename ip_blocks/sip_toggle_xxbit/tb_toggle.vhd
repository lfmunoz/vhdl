-------------------------------------------------------------------------------------
-- FILE NAME : tb_toggle.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - 
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : May 21, 2010
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- 
--
--
-------------------------------------------------------------------------------------
 
-------------------------------------------------------------------------------------
-- LIBRARIES
-------------------------------------------------------------------------------------
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.std_logic_unsigned.all;
   use ieee.std_logic_misc.all;
Library UNISIM;
    use UNISIM.vcomponents.all;
--Library xil_defaultlib;
-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity tb_toggle is
end tb_toggle;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of tb_toggle is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
constant CLK_10_MHZ  : time := 100 ns;
constant CLK_200_MHZ : time := 5 ns;
constant CLK_125_MHZ : time := 8 ns;
constant CLK_100_MHZ : time := 10 ns;
constant CLK_368_MHZ : time := 2.7126 ns;
constant CLK_25_MHZ  : time := 40 ns;
constant CLK_167_MHZ : time := 6 ns;

constant DATA_WIDTH  : natural := 8;
constant ADDR_WIDTH  : natural := 8;

type bus064 is array(natural range <>) of std_logic_vector(63 downto 0);
type bus008 is array(natural range <>) of std_logic_vector(7 downto 0);
type bus016 is array(natural range <>) of std_logic_vector(15 downto 0);

-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal sysclk_p     : std_logic := '1';
signal sysclk_n     : std_logic := '0';
signal clk          : std_logic := '1';
signal clk200       : std_logic := '1';
signal clk100       : std_logic := '1';
signal rst          : std_logic := '1';
signal rstn         : std_logic := '0';

signal rst_rstin    : std_logic_vector(31 downto 0) := (others=>'1');
signal clk_clkin    : std_logic_vector(31 downto 0) := (others=>'1');

signal clk_cmd      : std_logic;
signal in_cmd_val   : std_logic;
signal in_cmd       : std_logic_vector(63 downto 0);
signal out_cmd_val  : std_logic;
signal out_cmd      : std_logic_vector(63 downto 0);

signal host_data_in  : std_logic_vector(63 downto 0);
signal host_data_out : std_logic_vector(63 downto 0);
signal host_val_in   : std_logic;
signal host_val_out  : std_logic;
signal host_stop_out : std_logic;
signal host_stop_in  : std_logic;

signal lvds_in_n     : std_logic_vector(1 downto 0);
signal lvds_in_p     : std_logic_vector(1 downto 0);
signal lvds_out_n    : std_logic_vector(1 downto 0);
signal lvds_out_p    : std_logic_vector(1 downto 0);

--***********************************************************************************
begin
--***********************************************************************************
-- Clock & reset generation
sysclk_p <= not sysclk_p after CLK_25_MHZ/2;
sysclk_n <= not sysclk_p;
clk      <= not clk      after CLK_125_MHZ / 2;
clk200   <= not clk200   after CLK_200_MHZ / 2;
clk100   <= not clk100   after CLK_100_MHZ / 2;
rst      <= '0'          after CLK_125_MHZ * 10;
rstn     <= '1'          after CLK_125_MHZ * 10;

rst_rstin <= (0=>rst, 1 => rst, 2=> rst, others =>'0');
clk_clkin <= (13 => clk200, 14 => clk100, others=>clk);

-----------------------------------------------------------------------------------
--  Host Interface 
-----------------------------------------------------------------------------------
inst0_generic_host: entity work.generic_host_emu
generic map ( 
    global_start_addr_gen       => x"0000000",
    global_stop_addr_gen        => x"00000FF",
    private_start_addr_gen      => x"0000000",
    private_stop_addr_gen       => x"00000FF"
)
port map (
   cmdclk_out_cmdclk         => clk_cmd,      -- out   std_logic;
   cmd_in_cmdin              => out_cmd ,     -- in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val          => out_cmd_val,  -- in    std_logic;
   cmd_out_cmdout            => in_cmd,       -- out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val        => in_cmd_val,   -- out   std_logic;
   ifpga_rst_out_ifpga_rst   => open,         -- out   std_logic;
   clk_clkin                 => (others=>'0'),-- in    std_logic_vector(31 downto 0);
   rst_rstin                 => (others=>'0'),-- in    std_logic_vector(31 downto 0);
   sys_clk                   => clk,          -- in    std_logic;
   sys_reset_n               => rstn,         -- in    std_logic;
   in_data_in_stop           => host_stop_in, -- out   std_logic;
   in_data_in_dval           => host_val_in,  -- in    std_logic;
   in_data_in_data           => host_data_in, -- in    std_logic_vector(63 downto 0);
   out_data_out_stop         => host_stop_out,-- in    std_logic;
   out_data_out_dval         => host_val_out, -- out   std_logic;
   out_data_out_data         => host_data_out -- out   std_logic_vector(63 downto 0)
);

IDELAYCTRL_inst : IDELAYCTRL
port map (
      RDY 		=> open,       -- 1-bit output: Ready output
      REFCLK 	=> clk200, -- 1-bit input: Reference clock input
      RST 		=> '0'        -- 1-bit input: Active high reset input
);

-----------------------------------------------------------------------------------
-- Unit under test
-----------------------------------------------------------------------------------
sip_toggle_4lvds_inst0: 
entity work.sip_toggle_4lvds
generic map (
   global_start_addr_gen     =>   x"0000000",
   global_stop_addr_gen      =>   x"0001FFF",
   private_start_addr_gen    =>   x"0000100",
   private_stop_addr_gen     =>   x"00001FF"
) 
port map (
	clk_clkin          => clk_clkin,
	rst_rstin          => rst_rstin,
	cmdclk_in_cmdclk   => clk_cmd,
	cmd_in_cmdin       => in_cmd,
	cmd_in_cmdin_val   => in_cmd_val,
	cmd_out_cmdout     => out_cmd,
	cmd_out_cmdout_val => out_cmd_val,
	lvds_in_n          => lvds_in_n,
	lvds_in_p          => lvds_in_p,
	lvds_out_n         => lvds_out_n,
	lvds_out_p         => lvds_out_p
);


lvds_in_n(0) <= sysclk_n;
lvds_in_p(0) <= sysclk_p;
lvds_in_n(1) <= sysclk_n;
lvds_in_p(1) <= sysclk_p;

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

