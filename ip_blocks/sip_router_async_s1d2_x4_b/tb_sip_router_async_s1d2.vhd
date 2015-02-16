-------------------------------------------------------------------------------------
-- FILE NAME : tb_sip_router_async_s1d2.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - tb_sip_router_async_s1d2
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
entity tb_sip_router_async_s1d2 is
end tb_sip_router_async_s1d2;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of tb_sip_router_async_s1d2 is

-------------------------------------------------------------------------------------
-- Component Declarations
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
signal rst_delay    : std_logic := '1';
signal rst          : std_logic := '1';
signal rstn         : std_logic := '0';

signal rst_rstin    : std_logic_vector(31 downto 0) := (others=>'1');
signal clk_clkin    : std_logic_vector(31 downto 0) := (others=>'1');

signal clk_cmd      : std_logic;
signal in_cmd_val   : std_logic;
signal in_cmd       : std_logic_vector(63 downto 0);
signal out_cmd_val  : std_logic;
signal out_cmd      : std_logic_vector(63 downto 0);

signal adc0_out     : std_logic_vector(63 downto 0);
signal adc0_val     : std_logic;
signal adc0_stop    : std_logic;
signal dac0_out     : std_logic_vector(63 downto 0);
signal dac0_val     : std_logic;
signal dac0_stop    : std_logic;
signal flop         : std_logic := '1';

--stimulus
signal samples16bit     : bus016(3 downto 0) := (others=>(others=>'0'));
signal base_cnt         : std_logic_vector(15 downto 0);
signal send_data        : std_logic_vector(63 downto 0);
signal send_valid       : std_logic;

signal valid_in_cnt     : std_logic_vector(31 downto 0);
signal valid_out_cnt    : std_logic_vector(31 downto 0);
signal valid_out        : std_logic;
signal diff_001         : std_logic_vector(31 downto 0);
signal in_stop          : std_logic;

signal data_recv        : std_logic_vector(63 downto 0);
signal verify_error     : std_logic := '0';
signal verify_cnt       : std_logic_vector(63 downto 0);

--***********************************************************************************
begin
--***********************************************************************************
-- Clock & reset generation
sysclk_p  <= not sysclk_p after CLK_125_MHZ/2;
sysclk_n  <= not sysclk_p;
clk       <= not clk      after CLK_125_MHZ / 2;
clk200    <= not clk200   after CLK_167_MHZ / 2;
clk100    <= not clk100   after CLK_125_MHZ / 2;
rst       <= '0'          after CLK_125_MHZ * 10;
rst_delay <= '0'          after CLK_125_MHZ * 20;
rstn      <= '1'          after CLK_125_MHZ * 10;

rst_rstin <= (0=>rst, 1 => rst, 2=> rst, others =>'0');
clk_clkin <= (13 => clk200, 14 => clk100, others=>clk);


-----------------------------------------------------------
--  Host Interface 
-----------------------------------------------------------
inst0_generic_host: generic_host_emu
generic map ( 
    global_start_addr_gen       => x"0000000",
    global_stop_addr_gen        => x"00000FF",
    private_start_addr_gen      => x"0000000",
    private_stop_addr_gen       => x"00000FF"
)
port map (
   cmdclk_out_cmdclk         => clk_cmd,      -- out   std_logic;
   cmd_in_cmdin              => out_cmd ,     -- in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val          => out_cmd_val,  -- in    std_logic;
   cmd_out_cmdout            => in_cmd,       -- out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val        => in_cmd_val,   -- out   std_logic;
   ifpga_rst_out_ifpga_rst   => open,         -- out   std_logic;
   clk_clkin                 => (others=>'0'),-- in    std_logic_vector(31 downto 0);
   rst_rstin                 => (others=>'0'),-- in    std_logic_vector(31 downto 0);
   sys_clk                   => clk,          -- in    std_logic;
   sys_reset_n               => rstn,         -- in    std_logic;
   in_data_in_stop           => adc0_stop,    -- out   std_logic;
   in_data_in_dval           => adc0_val,     -- in    std_logic;
   in_data_in_data           => adc0_out,     -- in    std_logic_vector(63 downto 0);
   out_data_out_stop         => dac0_stop,          -- in    std_logic;
   out_data_out_dval         => dac0_val,         -- out   std_logic;
   out_data_out_data         => dac0_out          -- out   std_logic_vector(63 downto 0)
);

-----------------------------------------------------------------------------------
-- Unit under test
-----------------------------------------------------------------------------------
sip_router_async_s1d2_x4_b_0 : entity xil_defaultlib.sip_router_async_s1d2_x4_b
generic map
(
   global_start_addr_gen     =>   x"0000000",
   global_stop_addr_gen      =>   x"0001FFF",
   private_start_addr_gen    =>   x"0000200",
   private_stop_addr_gen     =>   x"00002FF"
)
port map
(
   cmdclk_in_cmdclk          =>   clk_cmd,
   cmd_in_cmdin              =>   in_cmd,
   cmd_in_cmdin_val          =>   in_cmd_val,
   cmd_out_cmdout            =>   out_cmd,
   cmd_out_cmdout_val        =>   out_cmd_val,
   clk_clkin                 =>   clk_clkin,
   rst_rstin                 =>   rst_rstin,
   in0_in_stop               =>   in_stop,
   in0_in_dval               =>   send_valid,
   in0_in_data               =>   send_data,
   in1_in_stop               =>   open,
   in1_in_dval               =>   send_valid,
   in1_in_data               =>   send_data,
   in2_in_stop               =>   open,
   in2_in_dval               =>   send_valid,
   in2_in_data               =>   send_data,
   in3_in_stop               =>   open,
   in3_in_dval               =>   send_valid,
   in3_in_data               =>   send_data,
   out0_0_out_stop           =>   '0',
   out0_0_out_dval           =>   open,
   out0_0_out_data           =>   open,
   out1_0_out_stop           =>   '0',
   out1_0_out_dval           =>   open,
   out1_0_out_data           =>   open,
   out2_0_out_stop           =>   '0',
   out2_0_out_dval           =>   open,
   out2_0_out_data           =>   open,
   out3_0_out_stop           =>   '0',
   out3_0_out_dval           =>   open,
   out3_0_out_data           =>   open,
   out0_1_out_stop           =>   '0',
   out0_1_out_dval           =>   valid_out,
   out0_1_out_data           =>   data_recv,
   out1_1_out_stop           =>   '0',
   out1_1_out_dval           =>   open,
   out1_1_out_data           =>   open,
   out2_1_out_stop           =>   '0',
   out2_1_out_dval           =>   open,
   out2_1_out_data           =>   open,
   out3_1_out_stop           =>   '0',
   out3_1_out_dval           =>   open,
   out3_1_out_data           =>   open
);



process(clk100, rst_delay)
begin
    if rst_delay = '1' then

        valid_out_cnt <= (others=>'0');
        verify_error    <= '0';
        verify_cnt      <= x"00000000_00000001";
    elsif rising_edge(clk100) then

        if valid_out = '1' then
            valid_out_cnt <= valid_out_cnt + 1;
            verify_cnt    <= verify_cnt + 1;
        end if;
        
        if valid_out = '1' and verify_cnt /= data_recv then
            verify_error  <= '1';
        end if;


    end if;
end process;



-----------------------------------------------------------------------------------
-- Data generation 
-----------------------------------------------------------------------------------
process(clk200, rst_delay)
begin
  if rising_edge(clk200) then
    if rst_delay = '1' then
        base_cnt    <= (others =>'0');
        send_valid  <= '0';
        send_data   <= (others=>'0');
        valid_in_cnt <= (others=>'0');
        diff_001     <= (others=>'0');

    else


        if in_stop = '0' then
            base_cnt  <= base_cnt + 4; 
           -- send_data  <= samples16bit(3) & samples16bit(2) & samples16bit(1) & samples16bit(0);
            send_data  <= send_data + 1; -- samples16bit(3) & samples16bit(2) & samples16bit(1) & samples16bit(0);
            send_valid <= '1';
        else
            send_valid <= '0';
        end if;


        if send_valid = '1' then
            valid_in_cnt <= valid_in_cnt + 1;
        end if;


        diff_001 <= valid_in_cnt - valid_out_cnt;
        
    end if;
  end if;
end process;
 
samples16bit(0) <= base_cnt + 0; 
samples16bit(1) <= base_cnt + 1; 
samples16bit(2) <= base_cnt + 2; 
samples16bit(3) <= base_cnt + 3;


--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

