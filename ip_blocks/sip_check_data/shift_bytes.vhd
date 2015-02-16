-------------------------------------------------------------------------------------
-- FILE NAME : shift_bytes.vhd
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
-- Accept an input data stream and shifts the bytes
-- 
--
-------------------------------------------------------------------------------------
 
-------------------------------------------------------------------------------------
-- LIBRARIES
-------------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    -- non-IEEE packages
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_misc.all;
    use ieee.std_logic_arith.all; 

-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity shift_bytes is
port (
    clk_in          : in std_logic;
    rst_in          : in std_logic;
    data_in         : in std_logic_vector(63 downto 0);
    valid_in        : in std_logic;
    data_out        : out std_logic_vector(63 downto 0);
    valid_out       : out std_logic;
    shift_amount_in  : in std_logic_vector(2 downto 0)
);
end shift_bytes;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of shift_bytes is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
type bus008  is array(natural range <>) of std_logic_vector( 7 downto 0); 
type bus064  is array(natural range <>) of std_logic_vector(63 downto 0); 

-------------------------------------------------------------------------------------
-- SIGNALS
-------------------------------------------------------------------------------------
signal valid_pipe       : std_logic_vector(2 downto 0);
signal data_pipe        : bus064(2 downto 0);
signal data_pipe_byte   : bus008(23 downto 0);


--***********************************************************************************
begin
--***********************************************************************************

-- buffer 3 cycles
process(clk_in)
begin
 if rising_edge(clk_in) then

     valid_pipe(2) <= valid_in;
     valid_pipe(1) <= valid_pipe(2);
     valid_pipe(0) <= valid_pipe(1);

     if valid_in = '1' then
        data_pipe(2) <= data_in;
        data_pipe(1) <= data_pipe(2);
        data_pipe(0) <= data_pipe(1);
    end if;

 end if;
end process;

-- Remap
data_pipe_byte(23)  <= data_pipe(2)(63 downto 56);  
data_pipe_byte(22)  <= data_pipe(2)(55 downto 48);  
data_pipe_byte(21)  <= data_pipe(2)(47 downto 40);  
data_pipe_byte(20)  <= data_pipe(2)(39 downto 32);
data_pipe_byte(19)  <= data_pipe(2)(31 downto 24);  
data_pipe_byte(18)  <= data_pipe(2)(23 downto 16);  
data_pipe_byte(17)  <= data_pipe(2)(15 downto  8);  
data_pipe_byte(16)  <= data_pipe(2)( 7 downto  0);
data_pipe_byte(15)  <= data_pipe(1)(63 downto 56);  
data_pipe_byte(14)  <= data_pipe(1)(55 downto 48);  
data_pipe_byte(13)  <= data_pipe(1)(47 downto 40);  
data_pipe_byte(12)  <= data_pipe(1)(39 downto 32);
data_pipe_byte(11)  <= data_pipe(1)(31 downto 24);  
data_pipe_byte(10)  <= data_pipe(1)(23 downto 16);  
data_pipe_byte(9)   <= data_pipe(1)(15 downto  8);  
data_pipe_byte(8)   <= data_pipe(1)( 7 downto  0);
data_pipe_byte(7)   <= data_pipe(0)(63 downto 56);  
data_pipe_byte(6)   <= data_pipe(0)(55 downto 48);  
data_pipe_byte(5)   <= data_pipe(0)(47 downto 40);  
data_pipe_byte(4)   <= data_pipe(0)(39 downto 32);
data_pipe_byte(3)   <= data_pipe(0)(31 downto 24);  
data_pipe_byte(2)   <= data_pipe(0)(23 downto 16);  
data_pipe_byte(1)   <= data_pipe(0)(15 downto  8);  
data_pipe_byte(0)   <= data_pipe(0)( 7 downto  0);

process(clk_in)
begin
 if rising_edge(clk_in) then
   if rst_in = '1' then
     data_out     <= (others=>'0');
     valid_out    <= '0';
   else

     case shift_amount_in is
       when "000" => 
         data_out  <= data_pipe_byte(15) & data_pipe_byte(14) & data_pipe_byte(13) & data_pipe_byte(12) &
                      data_pipe_byte(11) & data_pipe_byte(10) & data_pipe_byte(9) & data_pipe_byte(8);
         valid_out <= valid_in;
       when "001" => 
         data_out  <= data_pipe_byte(14) & data_pipe_byte(13) & data_pipe_byte(12) & data_pipe_byte(11) &
                      data_pipe_byte(10) & data_pipe_byte(9) & data_pipe_byte(8) & data_pipe_byte(7);
         valid_out <= valid_in;
       when "010" => 
         data_out  <= data_pipe_byte(13) & data_pipe_byte(12) & data_pipe_byte(11) & data_pipe_byte(10) &
                      data_pipe_byte(9) & data_pipe_byte(8) & data_pipe_byte(7) & data_pipe_byte(6);
         valid_out <= valid_in;
       when "011" => 
         data_out  <= data_pipe_byte(12) & data_pipe_byte(11) & data_pipe_byte(10) & data_pipe_byte(9) &
                      data_pipe_byte(8) & data_pipe_byte(7) & data_pipe_byte(6) & data_pipe_byte(5);
         valid_out <= valid_in;

       when "100" => 
         data_out  <= data_pipe_byte(15) & data_pipe_byte(14) & data_pipe_byte(13) & data_pipe_byte(12) &
                      data_pipe_byte(11) & data_pipe_byte(10) & data_pipe_byte(9) & data_pipe_byte(8);
         valid_out <= valid_in;
       when "101" => 
         data_out  <= data_pipe_byte(14) & data_pipe_byte(13) & data_pipe_byte(12) & data_pipe_byte(11) &
                      data_pipe_byte(10) & data_pipe_byte(9) & data_pipe_byte(8) & data_pipe_byte(7);
         valid_out <= valid_in;
       when "110" => 
         data_out  <= data_pipe_byte(13) & data_pipe_byte(12) & data_pipe_byte(11) & data_pipe_byte(10) &
                      data_pipe_byte(9) & data_pipe_byte(8) & data_pipe_byte(7) & data_pipe_byte(6);
         valid_out <= valid_in;
       when "111" => 
         data_out  <= data_pipe_byte(12) & data_pipe_byte(11) & data_pipe_byte(10) & data_pipe_byte(9) &
                      data_pipe_byte(8) & data_pipe_byte(7) & data_pipe_byte(6) & data_pipe_byte(5);
         valid_out <= valid_in;

       when others =>     
         data_out  <= data_pipe_byte(15) & data_pipe_byte(14) & data_pipe_byte(13) & data_pipe_byte(12) &
                      data_pipe_byte(11) & data_pipe_byte(10) & data_pipe_byte(9) & data_pipe_byte(8);
         valid_out <= valid_in;
     end case;
     
   end if;
 end if;
end process;

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

