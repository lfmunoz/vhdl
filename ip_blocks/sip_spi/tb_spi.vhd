-------------------------------------------------------------------------------------
-- FILE NAME : tb_spi.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - 
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : May 21, 2010
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
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
library unisim;
  use unisim.vcomponents.all;

-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity tb_spi is
end tb_spi;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of tb_spi is

-------------------------------------------------------------------------------------
-- Component Declaration
-------------------------------------------------------------------------------------
component generic_host_emu is
generic (
   global_start_addr_gen                   : std_logic_vector(27 downto 0);
   global_stop_addr_gen                    : std_logic_vector(27 downto 0);
   private_start_addr_gen                  : std_logic_vector(27 downto 0);
   private_stop_addr_gen                   : std_logic_vector(27 downto 0)
);
port (
--Wormhole 'cmdclk_out' of type 'cmdclk_out':
   cmdclk_out_cmdclk                       : out   std_logic;

--Wormhole 'cmd_in' of type 'cmd_in':
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;

--Wormhole 'cmd_out' of type 'cmd_out':
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;

--Wormhole 'ifpga_rst_out' of type 'ifpga_rst_out':
   ifpga_rst_out_ifpga_rst                 : out   std_logic;

--Wormhole 'clk' of type 'clkin':
   clk_clkin                               : in    std_logic_vector(31 downto 0);
--Wormhole 'rst' of type 'rst_in':
   rst_rstin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'ext_vp680_host_if' of type 'ext_vp680_host_if':
   sys_clk                                 : in    std_logic;
   sys_reset_n                             : in    std_logic;

--Wormhole 'in_data' of type 'wh_in':
   in_data_in_stop                         : out   std_logic;
   in_data_in_dval                         : in    std_logic;
   in_data_in_data                         : in    std_logic_vector(63 downto 0);

--Wormhole 'out_data' of type 'wh_out':
   out_data_out_stop                       : in    std_logic;
   out_data_out_dval                       : out   std_logic;
   out_data_out_data                       : out   std_logic_vector(63 downto 0)
);
end component generic_host_emu;

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
constant CLK_200_MHZ : time := 5 ns;
constant CLK_125_MHZ : time := 8 ns;
constant CLK_100_MHZ : time := 10 ns;
constant CLK_300_MHZ : time := 3.3333 ns;
constant CLK_25_MHZ  : time := 40 ns;
constant CLK_167_MHZ : time := 6 ns;

constant DATA_WIDTH  : natural := 8;
constant ADDR_WIDTH  : natural := 8;

constant WR_BIT : std_logic := '0'; -- 0 means write
constant RD_BIT : std_logic := '1'; -- 1 means read

constant START_ADDR_AMC7823_CTRL0       : std_logic_vector(27 downto 0) :=  x"0000100";
constant STOP_ADDR_AMC7823_CTRL0        : std_logic_vector(27 downto 0) :=  x"00001FF";  
-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal sysclk_p     : std_logic := '1';
signal sysclk_n     : std_logic := '0';
signal clk          : std_logic := '1';
signal rst          : std_logic := '1';
signal rstn         : std_logic := '0';
signal clk_cmd : std_logic;
signal in_cmd_val   : std_logic;
signal in_cmd       : std_logic_vector(63 downto 0);
signal out_cmd_val : std_logic;
signal out_cmd     : std_logic_vector(63 downto 0);
signal out_cmd_val4 : std_logic;
signal out_cmd4     : std_logic_vector(63 downto 0);
signal sclk_prebuf      : std_logic;
signal serial_clk       : std_logic;
signal sclk_ext         : std_logic;
signal spi_sclk_phy     : std_logic;
signal spi_sdo_phy      : std_logic; 
signal spi_sdi_phy      : std_logic;
signal spi_csn_phy      : std_logic;
signal spi_reset_phy    : std_logic;
signal spi_sclk         : std_logic;
signal spi_counter : std_logic_vector(7 downto 0);


signal spi0_capure  : std_logic_vector(31 downto 0) := (others=>'0');

--***********************************************************************************
begin
--***********************************************************************************
-- Clock & reset generation
sysclk_p <= not sysclk_p after CLK_100_MHZ/2;
sysclk_n <= not sysclk_p;

clk      <= not clk after CLK_125_MHZ / 2;
rst      <= '0'     after CLK_125_MHZ * 10;
rstn     <= '1'     after CLK_125_MHZ * 10;

----------------------------------------------------------------------------------------------------
-- Generic host interface
----------------------------------------------------------------------------------------------------
inst0_generic_host: generic_host_emu
generic map ( 
    global_start_addr_gen       => x"0000000",
    global_stop_addr_gen        => x"00000FF",
    private_start_addr_gen      => x"0000000",
    private_stop_addr_gen       => x"00000FF"
)
port map (
   cmdclk_out_cmdclk         =>  clk_cmd,           -- out   std_logic;
   cmd_in_cmdin              =>  out_cmd ,          -- in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val          => out_cmd_val,            -- in    std_logic;
   cmd_out_cmdout            =>  in_cmd,           -- out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val        =>  in_cmd_val,          -- out   std_logic;
   ifpga_rst_out_ifpga_rst   =>  open,          -- out   std_logic;
   clk_clkin                 => (others=>'0'),            -- in    std_logic_vector(31 downto 0);
   rst_rstin                 => (others=>'0'),            -- in    std_logic_vector(31 downto 0);
   sys_clk                   => clk,           -- in    std_logic;
   sys_reset_n               => rstn,            -- in    std_logic;
   in_data_in_stop           => open,             -- out   std_logic;
   in_data_in_dval           => '0',            -- in    std_logic;
   in_data_in_data           => (others=>'0'),            -- in    std_logic_vector(63 downto 0);
   out_data_out_stop         => '0',            -- in    std_logic;
   out_data_out_dval         => open,            -- out   std_logic;
   out_data_out_data         => open            -- out   std_logic_vector(63 downto 0)
);

----------------------------------------------------------------------------------------------------
-- Generate serial clocks for SPI (max 6.66MHz, due to ...)
----------------------------------------------------------------------------------------------------
process (clk_cmd)
  -- Divide by 2^5 = 32, CLKmax = 32 x 6.66MHz
  variable clk_div : std_logic_vector(4 downto 0) := (others => '0');
begin
  if (rising_edge(clk_cmd)) then
    clk_div    := clk_div + '1';
    -- The slave samples the data on the rising edge of SCLK.
    -- therefore we make sure the external clock is slightly
    -- after the internal clock.
    sclk_ext <= clk_div(clk_div'length-1);
    sclk_prebuf <= sclk_ext;
  end if;
end process;

bufg_sclk : bufg
port map (
  i => sclk_prebuf,
  o => serial_clk
);

----------------------------------------------------------------------------------------------------
-- SPI interface controlling the FMC144 MONITOR
----------------------------------------------------------------------------------------------------
--spi_mon_ctrl0: 
--entity work.amc7823_ctrl
--generic map (
--  START_ADDR      => START_ADDR_AMC7823_CTRL0,
--  STOP_ADDR       => STOP_ADDR_AMC7823_CTRL0
--)
--port map (
--  rst             => rst,
--  clk             => serial_clk,
--   -- Command Interface
--  clk_cmd         => clk_cmd,
--  in_cmd_val      => in_cmd_val,
--  in_cmd          => in_cmd,
--  out_cmd_val     => out_cmd_val4,
--  out_cmd         => out_cmd4,
--  -- Serial Interface
--  trig_n_cs       => spi_csn_phy, 
--  trig_sclk       => spi_sclk_phy, 
--  trig_sdo        => spi_sdo_phy, 
--  trig_clksel0    => spi_sdi_phy 
--);
--

spi_sclk <= spi_sclk_phy when spi_csn_phy = '0' else '0';

spi_adc1_ctrl0: 
entity work.adc16dx370_ctrl
generic map (
  START_ADDR     => START_ADDR_AMC7823_CTRL0,
  STOP_ADDR      => STOP_ADDR_AMC7823_CTRL0
)
port map (
 rst             => rst,
 clk             => serial_clk,
 -- Command Interface
 clk_cmd         => clk_cmd,
 in_cmd_val      => in_cmd_val,
 in_cmd          => in_cmd,
 out_cmd_val     => out_cmd_val4,
 out_cmd         => out_cmd4,
 -- Serial Interface
 trig_n_cs       => spi_csn_phy, 
 trig_sclk       => spi_sclk_phy, 
 trig_sdo        => spi_sdo_phy, 
 trig_clksel0    => spi_sdi_phy
);

----------------------------------------------------------------------------------------------------
-- Command out merge & pipeline
----------------------------------------------------------------------------------------------------
process (rst, clk_cmd)
begin
  if (rst = '1') then
    out_cmd_val  <= '0';
    out_cmd      <= (others => '0');
  elsif (rising_edge(clk_cmd)) then
    out_cmd_val  <= out_cmd_val4;
    out_cmd      <= out_cmd4;
  end if;
end process;

----------------------------------------------------------------------------------------------------
-- SPI device model
----------------------------------------------------------------------------------------------------
spi_checker_inst:
entity work.spi_checker
port map(
    clk        => serial_clk,
    sclk       => serial_clk,    
    sdo        => spi_sdi_phy,    
    sdi        => spi_sdo_phy,
    cs_n       => spi_csn_phy, 
    reg0       => spi0_capure
);

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************


