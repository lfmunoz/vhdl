-------------------------------------------------------------------------------------
-- FILE NAME : tb_sip_capture_x4.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - 
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : Jan 21, 2015
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- Testbench for sip_capture_x4.vhd
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
entity tb_sip_check_data is
end tb_sip_check_data;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of tb_sip_check_data is

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

type bus008 is array(natural range <>) of std_logic_vector(7 downto 0);
type bus064 is array(natural range <>) of std_logic_vector(63 downto 0);
-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal sysclk_p     : std_logic := '1';
signal sysclk_n     : std_logic := '0';
signal clk          : std_logic := '1';
signal clk200       : std_logic := '1';
signal clk100       : std_logic := '1';
signal rst          : std_logic := '1';
signal rst_delay    : std_logic := '1';
signal rstn         : std_logic := '0';
signal rst_rstin    : std_logic_vector(31 downto 0);
signal clk_clkin    : std_logic_vector(31 downto 0);
signal in_cmd_val   : std_logic;
signal in_cmd       : std_logic_vector(63 downto 0);
signal out_cmd_val  : std_logic;
signal out_cmd      : std_logic_vector(63 downto 0);
signal clk_cmd      : std_logic;

signal adc0_out     : std_logic_vector(63 downto 0);
signal adc0_val     : std_logic;
signal adc0_stop    : std_logic;
signal dac0_out     : std_logic_vector(63 downto 0);
signal dac0_val     : std_logic;
signal dac0_stop    : std_logic;


-- data generation
signal lfsr_out     : std_logic_vector(2 downto 0);
signal allow        : std_logic := '0';
signal samples8bit  : bus008(7 downto 0) := (others=>(others=>'0'));
signal base_cnt     : std_logic_vector(7 downto 0);
signal data         : std_logic_vector(63 downto 0);
signal valid        : std_logic;
signal shift_data   : std_logic_vector(63 downto 0);
signal shift_valid  : std_logic;

signal control      : std_logic_vector(31 downto 0);
signal status       : std_logic_vector(31 downto 0);

--***********************************************************************************
begin
--***********************************************************************************
-- Clock & reset generation
sysclk_p <= not sysclk_p after CLK_125_MHZ/2;
sysclk_n <= not sysclk_p;
clk      <= not clk      after CLK_125_MHZ / 2;
clk200   <= not clk200   after CLK_167_MHZ / 2;
clk100   <= not clk100   after CLK_125_MHZ / 2;
rst      <= '0'          after CLK_167_MHZ * 10;
rstn     <= '1'          after CLK_167_MHZ * 10;
rst_delay <= '0'         after CLK_167_MHZ * 40;


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

IDELAYCTRL_inst : IDELAYCTRL
port map (
      RDY 		=> open,       -- 1-bit output: Ready output
      REFCLK 	=> clk200, -- 1-bit input: Reference clock input
      RST 		=> '0'        -- 1-bit input: Active high reset input
);

-----------------------------------------------------------
-- Unit under test
-----------------------------------------------------------
sip_capture_x4_0: 
entity xil_defaultlib.sip_capture_x4
generic map (
   global_start_addr_gen     =>   x"0000000",
   global_stop_addr_gen      =>   x"0001FFF",
   private_start_addr_gen    =>   x"0000100",
   private_stop_addr_gen     =>   x"00001FF"
)
port map (
   cmdclk_in_cmdclk          =>   clk_cmd,
   cmd_in_cmdin              =>   in_cmd,
   cmd_in_cmdin_val          =>   in_cmd_val,
   cmd_out_cmdout            =>   out_cmd,
   cmd_out_cmdout_val        =>   out_cmd_val,
   clk_clkin                 =>   clk_clkin,
   rst_rstin                 =>   rst_rstin,
   in0_in_stop               =>   open,
   in0_in_dval               =>   shift_valid,
   in0_in_data               =>   shift_data,
   in1_in_stop               =>   open,
   in1_in_dval               =>   shift_valid,
   in1_in_data               =>   shift_data,
   in2_in_stop               =>   open,
   in2_in_dval               =>   shift_valid,
   in2_in_data               =>   shift_data,
   in3_in_stop               =>   open,
   in3_in_dval               =>   shift_valid,
   in3_in_data               =>   shift_data,
   out0_out_stop             =>   '0',
   out0_out_dval             =>   open,
   out0_out_data             =>   open,
   out1_out_stop             =>   '0',
   out1_out_dval             =>   open,
   out1_out_data             =>   open,
   out2_out_stop             =>   '0',
   out2_out_dval             =>   open,
   out2_out_data             =>   open,
   out3_out_stop             =>   '0',
   out3_out_dval             =>   open,
   out3_out_data             =>   open
);



--data_check_0:
--entity xil_defaultlib.data_check
--port map (
--    clk_in     => clk200,
--    rst_in     => rst,
--    data_in    => generate_data,
--    valid_in   => valid,
--    ctrl_in    => control,
--    status_out => status
--);

-----------------------------------------------------------------------------------
-- Stimulus
-----------------------------------------------------------------------------------
process(clk200, rst_delay)
begin
  if rising_edge(clk200) then
    if rst_delay = '1' then
        base_cnt   <= (others =>'0');
        valid      <= '0';
        allow      <= '0';
    else
        allow      <= lfsr_out(0);
        if allow = '1' then
            base_cnt  <= base_cnt + 2; 
            valid     <= '1';
        else
            valid     <= '0';
        end if;
    end if;
  end if;
end process;
 
samples8bit(0) <= base_cnt + 0; 
samples8bit(1) <= base_cnt + 0; 
samples8bit(2) <= base_cnt + 0; 
samples8bit(3) <= base_cnt + 0;
samples8bit(4) <= base_cnt + 1;
samples8bit(5) <= base_cnt + 1;
samples8bit(6) <= base_cnt + 1;
samples8bit(7) <= base_cnt + 1;

data <=  samples8bit(7) & samples8bit(6) & samples8bit(5) & samples8bit(4) &
         samples8bit(3) & samples8bit(2) & samples8bit(1) & samples8bit(0);

shift_bytes_0:
entity work.shift_bytes
port map (
    clk_in          => clk200,
    rst_in          => rst,
    data_in         => data,
    valid_in        => valid,
    data_out        => shift_data,
    valid_out       => shift_valid,
    shift_amount_in => "010"
);

-- generate sporadic data 
uut: entity work.LFSR_0 
generic map ( 
  WIDTH       => 3
)
port map (
  clk_in    => clk200,
  rst_in    => rst,
  reg_out   => lfsr_out
);

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************


