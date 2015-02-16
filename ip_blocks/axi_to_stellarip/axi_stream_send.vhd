-------------------------------------------------------------------------------------
-- FILE NAME : .vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - 
--             Architecture - 
-- LANGUAGE  : VHDL
-- DATE      : May 21, 2010
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- Simple AXI-Stream Master to generate data. Output COUNT worth of data by sequentially reading
-- a block ROM COUNT times. Loop around the block ROM if COUNT is greater than the address range
-- of the block ROM.
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
	
-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity axi_stream_send is
generic (
    COUNT : std_logic_vector(31 downto 0) := x"00000100"
);
port (
    clk         : in std_logic;
    rstn        : in std_logic;
    tdata       : out std_logic_vector(63 downto 0);
    tvalid      : out std_logic;
    enable      : in std_logic
);
end axi_stream_send;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of axi_stream_send is

-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal state        : std_logic_vector(3 downto 0);
signal rst          : std_logic;

signal tdata_r      : std_logic_vector(63 downto 0);
signal tvalid_r     : std_logic;

signal rom_addr     : std_logic_vector(1 downto 0);
signal rom_data     : std_logic_vector(63 downto 0);
signal rom_en       : std_logic;

signal counter      : std_logic_vector(63 downto 0);


--***********************************************************************************
begin
--***********************************************************************************
tdata   <= tdata_r;
tvalid  <= tvalid_r;

-------------------------------------------------------------------------------------
-- Local Reset
-------------------------------------------------------------------------------------
process (clk) is
begin
   if rising_edge(clk) then
      rst <=  not rstn;
   end if;
end process;

-------------------------------------------------------------------------------------
-- Controller
-------------------------------------------------------------------------------------
process(clk)
begin
    if rising_edge(clk) then
        if rst = '1' then
            state   <= x"0";
            rom_en  <= '0';
            rom_addr <= (others=>'0');
            counter <= (others =>'0');
        else
            rom_en <= '0';            
            rom_addr 	<= (others=>'0');
			
            case state is
                when x"0" =>
                     if enable = '1' then
                         state <= x"1";
                     end if;

                when x"1" =>
                    if counter /= COUNT then
                        counter     <= counter + 1;
                        rom_en      <= '1';
                        rom_addr    <= rom_addr + 1;
                    else
                       counter      <= (others=>'0');
                       state        <= x"0"; 
                    end if;

                when others =>
                    state <= x"0"; 

            end case;
        end if;
    end if;
end process;


-------------------------------------------------------------------------------------
-- Block ROM Instance
-------------------------------------------------------------------------------------
inst_rom:
entity work.rom
generic map(
    DATA_WIDTH  => 64,
    ADDR_WIDTH  => 2
)
port map ( 
	CLK	    => clk,	
	ADDR 	=> rom_addr,
	EN	    => rom_en,
	DO      => tdata_r,
    VAL     => tvalid_r
);

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

