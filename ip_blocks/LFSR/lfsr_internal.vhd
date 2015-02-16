-------------------------------------------------------------------------------------
-- FILE NAME : lfsr_internal.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - 
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : AUG 21, 2014
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
    -- IEEE  
    --use ieee.numeric_std.all; 
    -- non-IEEE 
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_misc.all;
    use ieee.std_logic_arith.all; 
Library UNISIM;
    use UNISIM.vcomponents.all;
-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity lfsr_internal is
generic (  
    WIDTH : natural := 8
);
port (
    clk_in         : in  std_logic;
    rst_in         : in  std_logic;
    reg_out        : out std_logic_vector(WIDTH-1 downto 0)
);
end lfsr_internal;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of lfsr_internal is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
constant INIT_VALUE : std_logic_vector(WIDTH-1 downto 0) := (2 => '1', others => '0');
-------------------------------------------------------------------------------------
-- SIGNALS
-------------------------------------------------------------------------------------
signal shift_reg : std_logic_vector(WIDTH-1 downto 0);

--***********************************************************************************
begin
--***********************************************************************************

process(clk_in, rst_in)
begin
	if rising_edge(clk_in) then
		if rst_in = '1' then
			shift_reg <= INIT_VALUE;
		else
			-- right shift the registers
			--shift_reg(WIDTH-2 downto 0) <= shift_reg(WIDTH-1 downto 1);
			-- xor bits to generate new value comming in from the msb
			--shift_reg(WIDTH-1) <= shift_reg(2) xor (shift_reg(1) xor (shift_reg(0) xor shift_reg(0)));
            shift_reg(0) <= shift_reg(2);
            shift_reg(1) <= shift_reg(2) xor shift_reg(0);
            shift_reg(2) <= shift_reg(1);
		end if;
	end if;
	reg_out <= shift_reg;
end process;
 
--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

