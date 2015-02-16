-------------------------------------------------------------------------------------
-- FILE NAME : data_check.vhd
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
entity data_check is
port (
    clk_in          : in  std_logic;
    rst_in          : in  std_logic;
    data_in         : in  std_logic_vector(63 downto 0);
    valid_in        : in  std_logic;
    check_en_in     : in  std_logic;
    status_out      : out std_logic_vector(7 downto 0)
);
end data_check;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of data_check is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
type state_machine is (HOLD_CMD, BYTE0_CMD, BYTE1_CMD, BYTE2_CMD);
	
type bus008 is array(natural range <>) of std_logic_vector(7 downto 0);
-------------------------------------------------------------------------------------
-- SIGNALS
-------------------------------------------------------------------------------------

signal recv_sm_reg	: state_machine;


signal byte_in      : bus008(7 downto 0);
signal byte_check   : bus008(7 downto 0);
signal byte_error   : std_logic_vector(7 downto 0);

signal run_test     : std_logic;
signal valid_reg    : std_logic;
signal data_reg     : std_logic_vector(63 downto 0);

signal samples8bit     : bus008(7 downto 0) := (others=>(others=>'0'));
signal base_cnt        : std_logic_vector(7 downto 0);
signal generate_data   : std_logic_vector(63 downto 0);


--***********************************************************************************
begin
--***********************************************************************************
run_test               <= check_en_in;
status_out(7 downto 0) <= byte_error(7 downto 0);


    
-------------------------------------------------------------------------------------
-- Counter process
-------------------------------------------------------------------------------------
process(clk_in, rst_in)
begin
    if rising_edge(clk_in) then
        if rst_in = '1' then
        
            for I in 0 to 7 loop
                 byte_in(I)     <= (others=>'0');
                 byte_check(I)  <= (others=>'0');
                 
            end loop;
            valid_reg  <= '0';
            base_cnt   <= (others=>'0');
            data_reg   <= (others=>'0');
            byte_error <= (others=>'0');
        else
            base_cnt    <= data_in(7 downto  0);
            data_reg    <= data_in;
            valid_reg   <= valid_in;

            byte_in(0)  <= data_reg(7 downto  0);
            byte_in(1)  <= data_reg(15 downto 8);
            byte_in(2)  <= data_reg(23 downto 16);
            byte_in(3)  <= data_reg(31 downto 24);
            byte_in(4)  <= data_reg(39 downto 32);
            byte_in(5)  <= data_reg(47 downto 40);
            byte_in(6)  <= data_reg(55 downto 48);
            byte_in(7)  <= data_reg(63 downto 56);
            

            if run_test = '1' and valid_reg = '1' then
                base_cnt      <= base_cnt + 2;
                byte_check(0) <= base_cnt + 0;
                byte_check(1) <= base_cnt + 0;
                byte_check(2) <= base_cnt + 0;
                byte_check(3) <= base_cnt + 0;
                byte_check(4) <= base_cnt + 1;
                byte_check(5) <= base_cnt + 1;
                byte_check(6) <= base_cnt + 1;
                byte_check(7) <= base_cnt + 1;
            else
                byte_check(0) <= data_reg(7 downto  0);
                byte_check(1) <= data_reg(15 downto 8);
                byte_check(2) <= data_reg(23 downto 16);
                byte_check(3) <= data_reg(31 downto 24);
                byte_check(4) <= data_reg(39 downto 32);
                byte_check(5) <= data_reg(47 downto 40);
                byte_check(6) <= data_reg(55 downto 48);
                byte_check(7) <= data_reg(63 downto 56);
            end if;

            for I in 0 to 7 loop
                if byte_in(I) /= byte_check(I)  and run_test = '1' and valid_reg = '1' then
                    byte_error(I) <= '1';
                end if; 
            end loop;

        end if;
    end if;
end process;


--process(clk_in, rst_in)
--begin
--  if rising_edge(clk_in) then
--    if rst_in = '1' then
--        base_cnt   <= (others =>'0');
--    else
--        base_cnt  <= base_cnt + 2; 
--    end if;
--  end if;
--end process;

--samples8bit(0) <= base_cnt + 0; 
--samples8bit(1) <= base_cnt + 0; 
--samples8bit(2) <= base_cnt + 0; 
--samples8bit(3) <= base_cnt + 0;
--samples8bit(4) <= base_cnt + 1;
--samples8bit(5) <= base_cnt + 1;
--samples8bit(6) <= base_cnt + 1;
--samples8bit(7) <= base_cnt + 1;


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

