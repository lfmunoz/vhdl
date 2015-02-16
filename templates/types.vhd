--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--
--
--
--
-- How to use?
--note this line.The package is compiled to this directory by default.
--so don't forget to include this directory.
--library work;
--this line also is must.This includes the particular package into your program.
--use work.test_pkg.all;
-- 
--
--
--
----------------------------------------------------------------------------------------------------
-- LIBRARIES
----------------------------------------------------------------------------------------------------
library IEEE;
   use IEEE.STD_LOGIC_1164.all;

----------------------------------------------------------------------------------------------------
-- PACKGE
----------------------------------------------------------------------------------------------------
package types is

type bus002  is array(natural range <>) of std_logic_vector(  1 downto 0); 
type bus004  is array(natural range <>) of std_logic_vector(  3 downto 0); 
type bus005  is array(natural range <>) of std_logic_vector(  4 downto 0); 
type bus006  is array(natural range <>) of std_logic_vector(  5 downto 0); 
type bus007  is array(natural range <>) of std_logic_vector(  6 downto 0); 
type bus008  is array(natural range <>) of std_logic_vector(  7 downto 0);
type bus009  is array(natural range <>) of std_logic_vector(  8 downto 0); 
type bus010  is array(natural range <>) of std_logic_vector(  9 downto 0); 
type bus011  is array(natural range <>) of std_logic_vector( 10 downto 0); 
type bus012  is array(natural range <>) of std_logic_vector( 11 downto 0); 
type bus013  is array(natural range <>) of std_logic_vector( 12 downto 0); 
type bus014  is array(natural range <>) of std_logic_vector( 13 downto 0); 
type bus015  is array(natural range <>) of std_logic_vector( 14 downto 0); 
type bus016  is array(natural range <>) of std_logic_vector( 15 downto 0); 
type bus017  is array(natural range <>) of std_logic_vector( 16 downto 0); 
type bus018  is array(natural range <>) of std_logic_vector( 17 downto 0); 
type bus019  is array(natural range <>) of std_logic_vector( 18 downto 0); 
type bus020  is array(natural range <>) of std_logic_vector( 19 downto 0); 
type bus021  is array(natural range <>) of std_logic_vector( 20 downto 0); 
type bus022  is array(natural range <>) of std_logic_vector( 21 downto 0); 
type bus023  is array(natural range <>) of std_logic_vector( 22 downto 0); 
type bus024  is array(natural range <>) of std_logic_vector( 23 downto 0); 
type bus025  is array(natural range <>) of std_logic_vector( 24 downto 0); 
type bus026  is array(natural range <>) of std_logic_vector( 25 downto 0); 
type bus027  is array(natural range <>) of std_logic_vector( 26 downto 0); 
type bus028  is array(natural range <>) of std_logic_vector( 27 downto 0);
type bus029  is array(natural range <>) of std_logic_vector( 28 downto 0);
type bus030  is array(natural range <>) of std_logic_vector( 29 downto 0);
type bus031  is array(natural range <>) of std_logic_vector( 30 downto 0);
type bus032  is array(natural range <>) of std_logic_vector( 31 downto 0); 
type bus064  is array(natural range <>) of std_logic_vector( 63 downto 0);
type bus128  is array(natural range <>) of std_logic_vector(127 downto 0);
type bus256  is array(natural range <>) of std_logic_vector(255 downto 0);

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--
--***************************************************************************************************
end types;
--***************************************************************************************************

----------------------------------------------------------------------------------------------------
-- PACKGE BODY
----------------------------------------------------------------------------------------------------
package body types is

    
function reverse_any_vector (a: in std_logic_vector)
return std_logic_vector is
  variable result: std_logic_vector(a'RANGE);
  alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
begin
  for i in aa'RANGE loop
    result(i) := aa(i);
  end loop;
  return result;
end;     
    
    
---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;

 --**************************************************************************************************
end types;
--***************************************************************************************************
