-------------------------------------------------------------------------------------
-- FILE NAME : performance.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - toplevel_template
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : AUG 21, 2014
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- Counts clock cycles and valids
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
entity performance is
port (
    clk_in          : in  std_logic;
    rst_in          : in  std_logic;
    start_in        : in std_logic;
    in_val          : in std_logic;
    out_val         : in std_logic;
    cycle_cnt       : out std_logic_vector(63 downto 0);
    in_cnt          : out std_logic_vector(63 downto 0);
    out_cnt         : out std_logic_vector(63 downto 0)         
);
end performance;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of performance is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
type state_m is (T_IDLE, T_COUNT, T_DONE);

-------------------------------------------------------------------------------------
-- SIGNALS
-------------------------------------------------------------------------------------
signal state_reg     : state_m;

signal timer_count   : std_logic_vector(63 downto 0);
signal input_count   : std_logic_vector(63 downto 0);
signal output_count  : std_logic_vector(63 downto 0);

signal count_rst     : std_logic;
signal valid         : std_logic;
signal input_valid   : std_logic;
signal output_valid  : std_logic;

--***********************************************************************************
begin
--***********************************************************************************

-- output mapping
cycle_cnt   <= timer_count;
out_cnt     <= output_count;
in_cnt      <= input_count;

-- control state machine
process (clk_in, rst_in)
begin
   if rising_edge(clk_in) then
      if rst_in = '1' then
         state_reg         <= T_IDLE;         
         timer_count    <= (others=>'0');
         count_rst      <= '1';
         valid          <= '0';
         input_valid    <= '0';
         output_valid   <= '0';
      else 

         input_valid    <= valid and in_val;
         output_valid   <= valid and out_val;        
         
         case state_reg is
            when T_IDLE =>
               timer_count    <= (others=>'0');
               count_rst      <= '1'; -- don't allow counting
               valid          <= '0'; -- don't accept data
               if start_in = '1' then
                  state_reg      <= T_COUNT;
               end if;
               
            when T_COUNT =>
               timer_count    <= timer_count + 1;
               state_reg      <= T_COUNT;
               count_rst      <= '0'; -- allow counting
               valid          <= '1'; -- accept data
               if start_in = '0' then
                  state_reg      <= T_DONE;
               end if;             
            when T_DONE =>            
               valid         <= '0'; -- allow counting (hold)
               count_rst     <= '0'; -- don't accept data
               if start_in = '1' then
                  state_reg      <= T_IDLE;
               end if; 
           when others =>
               timer_count    <= (others=>'0');
               count_rst      <= '1';
               valid          <= '0';  
               state_reg      <= T_IDLE;
            end case;
      end if;
   end if;
end process;
 
-------------------------------------------------------------------------------------
-- Input counter process
-------------------------------------------------------------------------------------
process(clk_in, count_rst)
begin
    if rising_edge(clk_in) then
        if count_rst = '1' then
            input_count <= (others=>'0');
        else
        
            if input_valid = '1' then
               input_count <= input_count + 1;
            end if;
        end if;
    end if;
end process;

-------------------------------------------------------------------------------------
-- Output counter process
-------------------------------------------------------------------------------------
process(clk_in, count_rst)
begin
    if rising_edge(clk_in) then
        if count_rst = '1' then
            output_count <= (others=>'0');
        else
            if output_valid = '1' then
               output_count <= output_count + 1;
            end if;
        end if;
    end if;
end process;

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

