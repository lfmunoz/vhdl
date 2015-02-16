
-------------------------------------------------------------------------------------
-- LIBRARIES
-------------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
 
-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity rom is
generic (
    DATA_WIDTH : natural := 64;
    ADDR_WIDTH : natural := 2
);
port ( 
	CLK		: in std_logic;
	ADDR 	: in std_logic_vector(ADDR_WIDTH-1 downto 0);
	EN		: in std_logic;
	DO		: out std_logic_vector(DATA_WIDTH-1 downto 0);
    VAL     : out std_logic
);
end entity rom;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture behavioral of rom is

type mem is array (2**ADDR_WIDTH - 1 downto 0) of std_logic_vector(DATA_WIDTH-1 downto 0);


constant my_Rom : mem := (
	0  => x"7640_5a81_30fb_0000",
	1  => x"30fb_5a81_7640_7fff",
	2  => x"89C0_A57F_CF05_0000",
	3  => x"CF05_A57F_89C0_8001"
);
	
--FMC230
--0000
--30fb
--5a81
--7640

--7fff
--7640
--5a81
--30fb

--0000
--CF05
--A57F
--89C0

--8001
--89C0
--A57F
--CF05

	
--***********************************************************************************
begin
--***********************************************************************************

process (CLK)
begin
    if rising_edge(clk) then

        VAL <= '0';

        if EN = '1' then
            DO <= my_Rom(conv_integer(ADDR)) ;
            VAL <= '1';
        end if;

    end if;
end process;

--***********************************************************************************
end architecture behavioral;
--***********************************************************************************
