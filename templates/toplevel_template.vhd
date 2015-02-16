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


type cmd_state_machine is (HOLD_CMD, BYTE0_CMD, BYTE1_CMD, BYTE2_CMD, BYTE3_CMD, BYTE4_CMD, 
											BYTE5_CMD, BYTE6_CMD, BYTE7_CMD, BYTE8_CMD, BYTE9_CMD, BYTE10_CMD,
												BYTE11_CMD, BYTE12_CMD, BYTE13_CMD, BYTE14_CMD, BYTE15_CMD);
	

type bus04  is array(natural range <>) of std_logic_vector( 3 downto 0); 
-------------------------------------------------------------------------------------
-- SIGNALS
-------------------------------------------------------------------------------------
signal counter_in	: std_logic_vector(33 downto 0);

signal recv_sm_reg	: cmd_state_machine;


attribute keep of counter_in : signal is "true";
attribute    S of counter_in : signal is "true";



--***********************************************************************************
begin
--***********************************************************************************


--process(clk, rst)
--begin
--  if rising_edge(clk) then
--  
--		if rst = '1' then
--			recv_sm_reg	 <= HOLD_CMD;
--			commad	 	 <= (others=>'0');
--			cmd_valid	 <= '0';
--		
--		else
--		
--			--default
--			cmd_valid	<= '0';
--			
--			case recv_sm_reg is
--				when HOLD_CMD 	 => 
--					if in_accept	= '1' then
--						recv_sm_reg				  <= BYTE0_CMD;
--					end if;
--					
--				when BYTE0_CMD  => -- data
--					if in_val = '1' then
--						commad(7 downto 0) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE1_CMD;
--					end if;
--				when BYTE1_CMD  =>
--					if in_val = '1' then
--						commad(15 downto 8) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE2_CMD;
--					end if;
--				when BYTE2_CMD  =>
--					if in_val = '1' then
--						commad(23 downto 16) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE3_CMD;
--					end if;
--				when BYTE3_CMD  =>
--					if in_val = '1' then
--						commad(31 downto 24) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE4_CMD;
--					end if;
--					
--				when BYTE4_CMD  => -- address
--					if in_val = '1' then
--						commad(39 downto 32) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE5_CMD;
--					end if;
--				when BYTE5_CMD  =>
--					if in_val = '1' then
--						commad(47 downto 40) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE6_CMD;
--					end if;
--				when BYTE6_CMD  =>
--					if in_val = '1' then
--						commad(55 downto 48) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE7_CMD;
--					end if;
--				when BYTE7_CMD  =>
--					if in_val = '1' then
--						commad(63 downto 56) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE8_CMD;
--					end if;
--					
--				when BYTE8_CMD  => -- cmd
--					if in_val = '1' then
--						commad(71 downto 64) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE9_CMD;
--					end if;
--				when BYTE9_CMD  =>
--					if in_val = '1' then
--						commad(79 downto 72) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE10_CMD;
--					end if;
--				when BYTE10_CMD =>
--					if in_val = '1' then
--						commad(87 downto 80) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE11_CMD;
--					end if;
--				when BYTE11_CMD =>
--					if in_val = '1' then
--						commad(95 downto 88) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE12_CMD;
--					end if;
--					
--				when BYTE12_CMD => -- size
--					if in_val = '1' then
--						commad(103 downto 96) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE13_CMD;
--					end if;
--				when BYTE13_CMD =>
--					if in_val = '1' then
--						commad(111 downto 104) <= in_dat(7 downto 0);
--						recv_sm_reg				  <= BYTE14_CMD;
--					end if;
--				when BYTE14_CMD =>
--					if in_val = '1' then
--						commad(119 downto 112) <= in_dat(7 downto 0);
--						recv_sm_reg				  	  <= BYTE15_CMD;
--					end if;
--				when BYTE15_CMD =>
--					if in_val = '1' then
--						commad(127 downto 120) <= in_dat(7 downto 0);
--						recv_sm_reg				  	 <= HOLD_CMD;
--						cmd_valid					 <= '1';
--					end if;
--				
--				when others =>
--					recv_sm_reg				  <= HOLD_CMD;
--					
--			end case;
--		
--		end if;
--
--  end if;
--end process;
--
    
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

