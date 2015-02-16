-------------------------------------------------------------------------------------
-- FILE NAME : data_align.vhd
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
entity data_align is
port (
    clk_in          : in  std_logic;
    rst_in          : in  std_logic;

    data_in         : in std_logic_vector(63 downto 0);
    val_in          : in std_logic;
    data_out        : out std_logic_vector(63 downto 0);
    val_out         : out std_logic
);
end data_align;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of data_align is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
type alignemnt_state_machine is (WAIT_STATE, CHECK_STATE, DONE_STATE);

	

type bus008  is array(natural range <>) of std_logic_vector( 7 downto 0); 
type bus064  is array(natural range <>) of std_logic_vector(63 downto 0); 
-------------------------------------------------------------------------------------
-- SIGNALS
-------------------------------------------------------------------------------------

signal sm_rx : alignemnt_state_machine;

signal valid_pipe       : std_logic_vector(2 downto 0);
signal data_pipe        : bus064(2 downto 0);
signal data_pipe_byte   : bus008(23 downto 0);


signal val_count            : std_logic_vector(3 downto 0);
signal alignment_mux_select : std_logic_vector(1 downto 0);
--***********************************************************************************
begin
--***********************************************************************************

-- buffer 3 cycles
process(clk_in)
begin
 if rising_edge(clk_in) then
     valid_pipe(2) <= val_in;
     valid_pipe(1) <= valid_pipe(2);
     valid_pipe(0) <= valid_pipe(1);

     if val_in = '1' then
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
     sm_rx                 <= WAIT_STATE;
     val_count             <= (others => '0');
     alignment_mux_select  <= "00";
     data_out              <= (others=>'0');
     val_out               <= '0';
   else

     case sm_rx is


       -- wait until we get 7 valid data
       when WAIT_STATE => 
         if val_count = 7 then
             sm_rx <= CHECK_STATE;
         elsif val_in = '1' then
             val_count <= val_count + 1;
         end if;

       when CHECK_STATE =>
         if data_pipe_byte(8) = data_pipe_byte(9) and 
            data_pipe_byte(8) = data_pipe_byte(10) and 
            data_pipe_byte(8) = data_pipe_byte(11) then
                alignment_mux_select <= "00";
                sm_rx <= DONE_STATE;
         elsif data_pipe_byte(8) = data_pipe_byte(9) and 
            data_pipe_byte(8) = data_pipe_byte(10) and 
            data_pipe_byte(8) = data_pipe_byte(7) then
                alignment_mux_select <= "01";
                sm_rx <= DONE_STATE;
         elsif data_pipe_byte(8) = data_pipe_byte(9) and 
            data_pipe_byte(8) = data_pipe_byte(7) and 
            data_pipe_byte(8) = data_pipe_byte(6) then
                alignment_mux_select <= "10";
                sm_rx <= DONE_STATE;
         elsif data_pipe_byte(8) = data_pipe_byte(7) and 
            data_pipe_byte(8) = data_pipe_byte(6) and 
            data_pipe_byte(8) = data_pipe_byte(5) then
                alignment_mux_select <= "11";
                sm_rx <= DONE_STATE;
         end if;

       when DONE_STATE =>
            sm_rx <=  DONE_STATE;

       when others =>
            sm_rx <= WAIT_STATE;

     end case;


     case alignment_mux_select is
       when "00" => 
         data_out  <= data_pipe_byte(15) & data_pipe_byte(14) & data_pipe_byte(13) & data_pipe_byte(12) &
                      data_pipe_byte(11) & data_pipe_byte(10) & data_pipe_byte(9) & data_pipe_byte(8);
         val_out   <= valid_pipe(1);
       when "01" => 
         data_out  <= data_pipe_byte(14) & data_pipe_byte(13) & data_pipe_byte(12) & data_pipe_byte(11) &
                      data_pipe_byte(10) & data_pipe_byte(9) & data_pipe_byte(8) & data_pipe_byte(7);
         val_out   <= valid_pipe(1);
       when "10" => 
         data_out  <= data_pipe_byte(13) & data_pipe_byte(12) & data_pipe_byte(11) & data_pipe_byte(10) &
                      data_pipe_byte(9) & data_pipe_byte(8) & data_pipe_byte(7) & data_pipe_byte(6);
         val_out   <= valid_pipe(1);
       when "11" => 
         data_out  <= data_pipe_byte(12) & data_pipe_byte(11) & data_pipe_byte(10) & data_pipe_byte(9) &
                      data_pipe_byte(8) & data_pipe_byte(7) & data_pipe_byte(6) & data_pipe_byte(5);
         val_out   <= valid_pipe(1);
       when others =>     
     end case;
     
   end if;
 end if;
end process;



--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

