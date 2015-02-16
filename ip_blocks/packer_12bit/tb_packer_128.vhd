-------------------------------------------------------------------------------------
-- FILE NAME : tb_packer_128.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - tb_packer_128
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
-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity tb_packer_128 is
end tb_packer_128;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of tb_packer_128 is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
constant CLK_200_MHZ : time := 5 ns;
constant CLK_100_MHZ : time := 10 ns;
constant CLK_300_MHZ : time := 3.3333 ns;
constant CLK_25_MHZ  : time := 40 ns;
constant CLK_167_MHZ : time := 6 ns;

-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal sysclk_p         : std_logic := '1';
signal sysclk_n         : std_logic := '0';
signal clk              : std_logic := '1';

signal rst              : std_logic := '1';
signal rstn             : std_logic := '0';

signal din              : std_logic_vector(127 downto 0);
signal val_in           : std_logic;
signal sample           : std_logic_vector(15 downto 0);
signal dout             : std_logic_vector(127 downto 0);
signal val_out          : std_logic;

signal din_64bit         : std_logic_vector(63 downto 0);
signal validin_64bit     : std_logic;
signal dout_64bit        : std_logic_vector(63 downto 0);
signal validout_64bit    : std_logic;

--***********************************************************************************
begin
--***********************************************************************************
-- Clock & reset generation
sysclk_p <= not sysclk_p after CLK_100_MHZ/2;
sysclk_n <= not sysclk_p;

clk      <= not clk after CLK_100_MHZ / 2;
rst      <= '0'     after CLK_100_MHZ * 10;
rstn     <= '1'     after CLK_100_MHZ * 10;

-----------------------------------------------------------------------------------
-- Unit under test
-----------------------------------------------------------------------------------
packer_128_inst0 : 
entity work.packer_128
port map (
    clk_in          => clk,
    rst_in          => rst,
    val_in          => val_in(127 downto 0),
    data_in         => din,
    val_out         => val_out(127 downto 0),
    data_out        => dout,
    test_mode       => '1'
);

--pack_16to12_inst0: 
--entity work.pack_16to12 
--port map(
--	clk           => clk,
--	rst           => rst,
--	enable        => '1',
--	data_in_dval  => validin_64bit,
--	data_in       => din_64bit,
--	data_in_stop  => open,
--	data_out_dval => dout_64bit,
--	data_out      => validout_64bit,
--	data_out_stop => '0'
--);



-----------------------------------------------------------------------------------
-- Stimulus
-----------------------------------------------------------------------------------
process(clk, rst)
begin
  if rising_edge(clk) then
    if rst = '1' then
      val_in  <= '0';
      sample  <= (others=>'0');
    else 
      val_in <= '1';
      sample <= sample + 8;
    end if;
  end if;
end process;

--din(15  downto   0) <= sample + 0;
--din(31  downto  16) <= sample + 1;
--din(47  downto  32) <= sample + 2;
--din(63  downto  48) <= sample + 3;
--din(79  downto  64) <= sample + 4;
--din(95  downto  80) <= sample + 5;
--din(111 downto  96) <= sample + 6;
--din(127 downto 112) <= sample + 7;

din(15  downto   0) <= x"0" & x"AAA";
din(31  downto  16) <= x"0" & x"BBB";
din(47  downto  32) <= x"0" & x"CCC";
din(63  downto  48) <= x"0" & x"DDD";
din(79  downto  64) <= x"0" & x"EEE";
din(95  downto  80) <= x"0" & x"FFF";
din(111 downto  96) <= x"0" & x"999";
din(127 downto 112) <= x"0" & x"888";
--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

