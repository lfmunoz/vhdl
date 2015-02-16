-------------------------------------------------------------------------------------
-- FILE NAME : .vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - delay_bit
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : May 21, 2014
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- Delay a pulse by a a given number of cycles. While delaying we CAN'T accept
-- a new pulse.
--
--------------------------------------------------------------------------------------
 
-------------------------------------------------------------------------------------
-- LIBRARIES
-------------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_misc.all;
    use ieee.std_logic_arith.all; 
    
-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity delay_bit is
generic (  
    CYCLES            : std_logic_vector(15 downto 0) := x"000F"
);
port (
    clk                : in std_logic;
    rst                : in std_logic;
    bit_in             : in std_logic;
    bit_out            : out std_logic
);
end delay_bit;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of delay_bit is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
 type DELAY_STATES is (
     DELAY_IDLE,
     DELAY_CNT,
     DELAY_ASSERT
 ); 
  
-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal state    : DELAY_STATES;
signal count    : std_logic_vector(15 downto 0);

--***********************************************************************************
begin
--***********************************************************************************
 
process (clk, rst) is
begin
    if rising_edge(clk) then
        if rst = '1' then
            state   <= DELAY_IDLE;
            bit_out <= '0';
            count   <= (others=>'0');
        else
            -- default output
            bit_out     <= '0';
        
            case state is
                when DELAY_IDLE =>
                
                    if bit_in = '1' then
                        state <= DELAY_CNT;
                    end if;
                    
                when DELAY_CNT =>
                
                    if count /= CYCLES then
                        count       <= count + 1;
                    else 
                        count       <= (others=>'0');
                        state       <= DELAY_ASSERT;
                    end if;
            
                when DELAY_ASSERT =>
                    bit_out     <= '1';
                    state       <= DELAY_IDLE;
            
                when others =>
                    state <= DELAY_IDLE;
                    
            end case;
        end if;
    end if;
end process;

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

