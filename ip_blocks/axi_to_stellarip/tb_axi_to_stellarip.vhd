-------------------------------------------------------------------------------------
-- FILE NAME : 
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
Library UNISIM;
    use UNISIM.vcomponents.all;
Library xil_defaultlib;

-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity tb_axi_to_stellarip is
end tb_axi_to_stellarip;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of tb_axi_to_stellarip is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
constant CLK_10_MHZ  : time := 100 ns;
constant CLK_200_MHZ : time := 5 ns;
constant CLK_125_MHZ : time := 8 ns;
constant CLK_100_MHZ : time := 10 ns;
constant CLK_368_MHZ : time := 2.7126 ns;
constant CLK_25_MHZ  : time := 40 ns;
constant CLK_167_MHZ : time := 6 ns;

constant DATA_WIDTH  : natural := 8;
constant ADDR_WIDTH  : natural := 8;

type bus064 is array(natural range <>) of std_logic_vector(63 downto 0);
type bus008 is array(natural range <>) of std_logic_vector(7 downto 0);
type bus016 is array(natural range <>) of std_logic_vector(15 downto 0);

-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal sysclk_p     : std_logic := '1';
signal sysclk_n     : std_logic := '0';
signal clk          : std_logic := '1';
signal clk200       : std_logic := '1';
signal clk100       : std_logic := '1';
signal rst          : std_logic := '1';
signal rstn         : std_logic := '0';

signal rst_rstin    : std_logic_vector(31 downto 0) := (others=>'1');
signal clk_clkin    : std_logic_vector(31 downto 0) := (others=>'1');

--AXI-Lite to 4DSP Stellar Cmds Signals
signal axi_aclk     : std_logic;
signal axi_aresetn  : std_logic;
signal axi_awaddr   : std_logic_vector(32-1 downto 0);
signal axi_awvalid  : std_logic;
signal axi_awready  : std_logic;
signal axi_wdata    : std_logic_vector(31  downto 0);                        
signal axi_wstrb    : std_logic_vector(3  downto 0);                        
signal axi_wvalid   : std_logic;
signal axi_wready   : std_logic;
signal axi_bresp    : std_logic_vector(1 downto 0);
signal axi_bvalid   : std_logic;
signal axi_bready   : std_logic;
signal axi_araddr   : std_logic_vector(31  downto 0);                                 
signal axi_arvalid  : std_logic;
signal axi_arready  : std_logic;
signal axi_rdata    : std_logic_vector(31 downto 0);
signal axi_rresp    : std_logic_vector(1 downto 0);
signal axi_rvalid   : std_logic;
signal axi_rready   : std_logic;

signal done         : std_logic;
signal status       : std_logic_vector(31 downto 0);

signal cmdclk_out   : std_logic;
signal cmd_in       : std_logic_vector(63 downto 0);
signal cmd_in_val   : std_logic;
signal cmd_out      : std_logic_vector(63 downto 0);
signal cmd_out_val  : std_logic;

signal dac0_tdata   : std_logic_vector(63 downto 0); 
signal dac0_tkeep   : std_logic_vector(3 downto 0); 
signal dac0_tlast   : std_logic; 
signal dac0_tready  : std_logic;
signal dac0_tstrb   : std_logic;
signal dac0_tuser   : std_logic_vector(31 downto 0);
signal dac0_tvalid  : std_logic;
signal dac0_in_dval : std_logic;
signal dac0_in_data : std_logic_vector(63 downto 0);
signal dac0_in_stop : std_logic;
signal dac0_enable  : std_logic;

--***********************************************************************************
begin
--***********************************************************************************
-- Clock & reset generation
sysclk_p <= not sysclk_p after CLK_100_MHZ/2;
sysclk_n <= not sysclk_p;
clk      <= not clk      after CLK_125_MHZ / 2;
clk200   <= not clk200   after CLK_200_MHZ / 2;
clk100   <= not clk100   after CLK_100_MHZ / 2;
rst      <= '0'          after CLK_125_MHZ * 10;
rstn     <= '1'          after CLK_125_MHZ * 40;

rst_rstin <= (0=>rst, 1 => rst, 2=> rst, others =>'0');
clk_clkin <= (13 => clk200, 14 => clk100, others=>clk);

axi_aclk    <= clk;
axi_aresetn <= rstn; -- delayed from rst 

-----------------------------------------------------------------------------------
-- StellarIP Command to AXI-Lite Interface
-----------------------------------------------------------------------------------
inst_stellarcmd_to_axilite:
entity xil_defaultlib.stellarcmd_to_axilite
port map(
   s_axi_aclk      => axi_aclk,
   --s_axi_aresetn   => axi_aresetn,
   rst            => rst,
   -- axi-lite: write address channel
   s_axi_awaddr    => axi_awaddr,
   s_axi_awvalid   => axi_awvalid,
   s_axi_awready   => axi_awready,
   -- axi-lite: write data channel 
   s_axi_wdata     => axi_wdata,
   s_axi_wstrb     => axi_wstrb,	 			
   s_axi_wvalid    => axi_wvalid,
   s_axi_wready    => axi_wready,
   -- axi-lite: write response channel
   s_axi_bresp     => axi_bresp,
   s_axi_bvalid    => axi_bvalid,
   s_axi_bready    => axi_bready,
   -- axi-lite: read address channel
   s_axi_araddr    => axi_araddr,				
   s_axi_arvalid   => axi_arvalid,
   s_axi_arready   => axi_arready,
   -- axi-lite: read channel
   s_axi_rdata     => axi_rdata,
   s_axi_rresp     => axi_rresp,
   s_axi_rvalid    => axi_rvalid,
   s_axi_rready    => axi_rready,
   -- command interface 
   cmd_clk          => cmdclk_out,
   cmd_out          => cmd_out,
   cmd_out_val      => cmd_out_val,
   cmd_in           => cmd_in,
   cmd_in_val       => cmd_in_val
);

cmd_in     <= (others=>'0');
cmd_in_val <= '0';

axi_arvalid <= '0';
axi_araddr  <= (others=>'0');
axi_rready  <= '0';

-------------------------------------------------------------------------
-- AXI-Lite Traffic Generator
--  Mode: System Init
--  Transasction Depth: 16
--  Number of AXI Channels: 1
---------------------------------------------------------------------------  
inst_traffic_gen: 
entity xil_defaultlib.axi_traffic_gen_0
PORT MAP (
  s_axi_aclk             => axi_aclk,
  s_axi_aresetn          => axi_aresetn,
  m_axi_lite_ch1_awaddr  => axi_awaddr,
  m_axi_lite_ch1_awprot  => open,
  m_axi_lite_ch1_awvalid => axi_awvalid,
  m_axi_lite_ch1_awready => axi_awready,
  m_axi_lite_ch1_wdata   => axi_wdata,
  m_axi_lite_ch1_wstrb   => axi_wstrb,
  m_axi_lite_ch1_wvalid  => axi_wvalid,
  m_axi_lite_ch1_wready  => axi_wready,
  m_axi_lite_ch1_bresp   => axi_bresp,
  m_axi_lite_ch1_bvalid  => axi_bvalid,
  m_axi_lite_ch1_bready  => axi_bready,
  --m_axi_lite_ch1_araddr  => axi_araddr,
  --m_axi_lite_ch1_arvalid => axi_arvalid,
  --m_axi_lite_ch1_arready => axi_arready,
  --m_axi_lite_ch1_rdata   => axi_rdata,
  --m_axi_lite_ch1_rvalid  => axi_rvalid,
  --m_axi_lite_ch1_rresp   => axi_rresp,
  --m_axi_lite_ch1_rready  => axi_rready,
  done                   => done,
  status                 => status
);

-----------------------------------------------------------------------------------
-- AXI-Stream to StellarIP Wormhole Output
-----------------------------------------------------------------------------------
inst_axistream_to_whin:
entity xil_defaultlib.axistream_to_whin
port map (
   clk                => axi_aclk,    
   rst                => rst,  
   data_in_tdata      => dac0_tdata, 
   data_in_tkeep      => dac0_tkeep, 
   data_in_tlast      => dac0_tlast, 
   data_in_tready     => dac0_tready, 
   data_in_tstrb      => dac0_tstrb, 
   data_in_tuser      => dac0_tuser, 
   data_in_tvalid     => dac0_tvalid, 
   data_out_out_stop  => dac0_in_stop, 
   data_out_out_dval  => dac0_in_dval,
   data_out_out_data  => dac0_in_data 
);

dac0_in_stop    <= '0';

-- dac data generation
inst0_axi_stream_send:
entity xil_defaultlib.axi_stream_send 
generic map(
    COUNT => x"00000040"
)
port map (
    clk        => axi_aclk,
    rstn       => axi_aresetn,
    tdata      => dac0_tdata,
    tvalid     => dac0_tvalid,
    enable     => dac0_enable 
);

dac0_enable <= '1';

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

