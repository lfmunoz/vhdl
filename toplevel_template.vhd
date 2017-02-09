-------------------------------------------------------------------------------------
-- FILE NAME : toplevel_template.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - toplevel_template
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : AUG 21, 2014
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
entity toplevel_template is
generic (  
    SIM_ONLY        : natural := 0;
    CLK_FREQ        : natural := 250
);
port (
    clk_in          : in  std_logic;
    rst_in          : in  std_logic;
    debug_out       : out std_logic_vector(63 downto 0)
);
end toplevel_template;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of toplevel_template is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
constant DEBUG_ENABLE : boolean  := FALSE;

attribute keep : string;
attribute    S : string;

type state_type is   (led1, led2, led3 ,led4);
signal state_reg : state_type;


type bus04  is array(natural range <>) of std_logic_vector( 3 downto 0); 
-------------------------------------------------------------------------------------
-- SIGNALS
-------------------------------------------------------------------------------------
signal counter_in	: std_logic_vector(33 downto 0);

attribute keep of counter_in : signal is "true";
attribute    S of counter_in : signal is "true";

--***********************************************************************************
begin
--***********************************************************************************


--process (clk, rst)
--begin
--    if rising_edge(clk) then
--        if rst = '1' then
--            state_reg <= led1;
--        end if;
--    else 
--        case state_reg is
--            when led1 =>
--                led <= "0001";
--                state_reg <= led2;
--            when led2 =>
--                led <= "0010";
--                state_reg <= led2;
--            when led3 =>
--                led <= "0100";
--                state_reg <= led2;
--            when led4 =>            
--                led <= "1000";
--                state_reg <= led1;
--            when others =>
--                led <= "0000";
--                state_reg <= led1;
--        end case;
--    end if;
--end process; 

-- immediate response
--data <= "00" when led = "0001" else 
--        "01" when led = "0010" else 
--        "10" when led = "0100" else 
--        "11" when led = "0100";

-------------------------------------------------------------------------------------
-- Counter process
-------------------------------------------------------------------------------------
--process(clk, rst)
--begin
--    if rising_edge(clk) then
--        if rst = '1' then
--
--        else
--
--
--        end if;
--    end if;
--end process;

-------------------------------------------------------------------------------------
-- Component Instance
-------------------------------------------------------------------------------------
--inst0_vp680_nnn_lx130t:
--entity work.vp680_nnn_lx130t
--generic map ( 
--   DEBUG          => FALSE,
--   ADDRESS        => "00010111111"
--)
--port map (
--   gpio_led_8          => ,
--   sys_clk_p_8         => ,
--   sys_clk_n_8         => ,
--   sys_reset_n_8       => ,
--   pci_exp_rxn_8       => ,
--   pci_exp_rxp_8       => ,
--   pci_exp_txn_8       => ,
--   pci_exp_txp_8       => ,
--   fp_cp_8             => ,
--   host_if_i2c_scl_8   => 
--);

-------------------------------------------------------------------------------------
-- Debug 
-------------------------------------------------------------------------------------
--generate_debug: 
--if (DEBUG_ENABLE = TRUE) generate
--begin
--
--end generate;

--generate_add_loop: 
--for I in 0 to 7 generate
--   SUM(I) <= A(I) xor B(I) xor C(I);
--   C(I+1) <= (A(I) and B(I)) or (A(I) and C(I)) or (B(I) and C(I));
--end generate;

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

