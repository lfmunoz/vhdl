-------------------------------------------------------------------------------------
-- FILE NAME : packer_128.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - packer_128
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : Jan 10, 2015
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- 16-bits as 8 samples =128-bits
-- 12-bits as 8 samples =96-bits 

-- 12-bits * 8 samples * 4 cycles = 384-bits
-- 16-bits * 8 samples * 3 cycles = 384-bits

-- When val_in = '1', this entity will accept 4 chuncks of 128-bits unpacked and output
-- 3 chucks of 128-bits packed.
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
    use ieee.std_logic_arith.all; 
Library UNISIM;
    use UNISIM.vcomponents.all;

-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity packer_128 is
port (
    clk_in          : in  std_logic;
    rst_in          : in  std_logic;
    val_in          : in  std_logic;
    data_in         : in  std_logic_vector(127 downto 0);
    val_out         : out std_logic;
    data_out        : out std_logic_vector(127 downto 0);
	test_mode		: in std_logic
);
end packer_128;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of packer_128 is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
type state_machine is (state0, state1, state2, state3);
	
-------------------------------------------------------------------------------------
-- SIGNALS
-------------------------------------------------------------------------------------
signal sm_reg	   : state_machine;
signal reg0        : std_logic_vector(127 downto 0);
signal sample0 	   : std_logic_vector(11 downto 0);
signal sample1 	   : std_logic_vector(11 downto 0);
signal sample2 	   : std_logic_vector(11 downto 0);
signal sample3 	   : std_logic_vector(11 downto 0);
signal sample4 	   : std_logic_vector(11 downto 0);
signal sample5 	   : std_logic_vector(11 downto 0);
signal sample6 	   : std_logic_vector(11 downto 0);
signal sample7     : std_logic_vector(11 downto 0);
signal sample0_cnt : std_logic_vector(11 downto 0);
signal sample1_cnt : std_logic_vector(11 downto 0);
signal sample2_cnt : std_logic_vector(11 downto 0);
signal sample3_cnt : std_logic_vector(11 downto 0);
signal sample4_cnt : std_logic_vector(11 downto 0);
signal sample5_cnt : std_logic_vector(11 downto 0);
signal sample6_cnt : std_logic_vector(11 downto 0);
signal sample7_cnt : std_logic_vector(11 downto 0);
signal counter	   : std_logic_vector(11 downto 0);
signal valid_reg   : std_logic;

signal zero_32     : std_logic_vector(31 downto 0);
signal zero_64     : std_logic_vector(63 downto 0);
signal zero_96     : std_logic_vector(95 downto 0);

--***********************************************************************************
begin
--***********************************************************************************

zero_96 <= (others=>'0');
zero_64 <= (others=>'0');
zero_32 <= (others=>'0');

-- Genereate a counting test pattern
process(clk_in,  rst_in)
begin
	if rst_in = '1' then
		counter <= (others=>'0');
	elsif rising_edge(clk_in) then
		if val_in = '1' then
			counter <= counter + 8;
		end if;
	end if;
end process;

sample0_cnt	<= counter + 0;
sample1_cnt	<= counter + 1;
sample2_cnt	<= counter + 2;
sample3_cnt	<= counter + 3;
sample4_cnt	<= counter + 4;
sample5_cnt	<= counter + 5;
sample6_cnt	<= counter + 6;
sample7_cnt	<= counter + 7;

-- select between test pattern or input data
process(clk_in)
begin
    if rising_edge(clk_in) then
	    valid_reg	<= val_in;	
	    if test_mode = '0' then
	    	sample0 <= data_in(11   downto  0);
	    	sample1 <= data_in(27   downto  16);
	    	sample2 <= data_in(43   downto  32);
	    	sample3 <= data_in(59   downto  48);
	    	sample4 <= data_in(75   downto  64);
	    	sample5 <= data_in(91   downto  80);
	    	sample6 <= data_in(107  downto  96);
	    	sample7 <= data_in(123  downto  112);
	    else
	    	sample0 <= sample0_cnt;
	    	sample1 <= sample1_cnt;
	    	sample2 <= sample2_cnt;
	    	sample3 <= sample3_cnt;
	    	sample4 <= sample4_cnt;
	    	sample5 <= sample5_cnt;
	    	sample6 <= sample6_cnt;
	    	sample7 <= sample7_cnt;	
	    end if;
    end if;
end process;

-- packing state machine
process(clk_in, rst_in)
begin
  if rising_edge(clk_in) then
  
		if rst_in = '1' then
            data_out <= (others=>'0');
            val_out  <= '0';
            reg0     <= (others=>'0');
            sm_reg   <= state0;
		else
			--default
			val_out	<= '0';
			case sm_reg is
				when state0 => 
                    if valid_reg = '1' then 
                        sm_reg <= state1;
                        reg0   <= zero_32 & sample7 & sample6 & sample5 &
                                    sample4 & sample3 & sample2 & sample1 & sample0;
                    end if;
				when state1 => 
                    sm_reg   <= state2;
                    val_out  <= '1';
                    data_out <= sample2(7 downto 0) & sample1 & sample0 & reg0(95 downto 0);
                    reg0     <= zero_64 & sample7 & sample6 & sample5 & 
                                             sample4 & sample3 & sample2(11 downto 8);
				when state2 =>
                    sm_reg   <= state3;
                    val_out  <= '1';
                    data_out <= sample5(3 downto 0) & sample4 & sample3 & sample2 & 
                                  sample1 & sample0 & reg0(63 downto 0);
                    reg0 <= zero_96 & sample7 & sample6 & sample5(11 downto 4);
				when state3 =>
                    sm_reg   <= state0;
                    val_out  <= '1';
                    data_out <= sample7 & sample6 & sample5 & sample4 & sample3 &
                                sample2 & sample1 & sample0 & reg0(31 downto 0);
				when others =>
					sm_reg   <= state0;
			end case;
		end if;
  end if;
end process;

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************


