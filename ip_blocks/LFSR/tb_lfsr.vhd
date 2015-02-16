-------------------------------------------------------------------------------------
-- FILE NAME : testbench_template.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - testbench_template
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : May 21, 2010
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- This entity is template for writing test benches
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
--Library UNISIM;
--    use UNISIM.vcomponents.all;
--Library xil_defaultlib;

-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity tb_lfsr is
end tb_lfsr;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of tb_lfsr is

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

signal reg0_out      : std_logic_vector(2 downto 0);
signal reg1_out      : std_logic_vector(2 downto 0);
signal reg2_out      : std_logic_vector(2 downto 0);

--***********************************************************************************
begin
--***********************************************************************************
-- Clock & reset generation
sysclk_p <= not sysclk_p after CLK_100_MHZ/2;
sysclk_n <= not sysclk_p;
clk      <= not clk      after CLK_125_MHZ / 2;
clk200   <= not clk200   after CLK_200_MHZ / 2;
clk100   <= not clk100   after CLK_100_MHZ / 2;
rst      <= '0'          after CLK_125_MHZ * 10;
rstn     <= '1'          after CLK_125_MHZ * 10;

rst_rstin <= (0=>rst, 1 => rst, 2=> rst, others =>'0');
clk_clkin <= (13 => clk200, 14 => clk100, others=>clk);


-----------------------------------------------------------------------------------
-- Unit under test
-----------------------------------------------------------------------------------
uut: entity work.LFSR_0 
generic map ( 
  WIDTH       => 3
)
port map (
  clk_in    => clk,
  rst_in    => rst,
  reg_out   => reg0_out
);

uut0: entity work.lfsr_internal
generic map ( 
  WIDTH       => 3
)
port map (
  clk_in    => clk,
  rst_in    => rst,
  reg_out   => reg1_out
);

uut1: entity work.lfsr_external
generic map ( 
  WIDTH       => 3
)
port map (
  clk_in    => clk,
  rst_in    => rst,
  reg_out   => reg2_out
);

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

