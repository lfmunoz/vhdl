--------------------------------------------------------------------------------
-- file name : fmc160_model.vhd
--
-- author    : P. Kortekaas
--
-- company   : 4dsp
--
-- item      : number
--
-- language  : vhdl
--
--------------------------------------------------------------------------------
-- description
-- ===========
--
--
-- notes:
--------------------------------------------------------------------------------
--
--  disclaimer: limited warranty and disclaimer. these designs are
--              provided to you as is.  4dsp specifically disclaims any
--              implied warranties of merchantability, non-infringement, or
--              fitness for a particular purpose. 4dsp does not warrant that
--              the functions contained in these designs will meet your
--              requirements, or that the operation of these designs will be
--              uninterrupted or error free, or that defects in the designs
--              will be corrected. furthermore, 4dsp does not warrant or
--              make any representations regarding use or the results of the
--              use of the designs in terms of correctness, accuracy,
--              reliability, or otherwise.
--
--              limitation of liability. in no event will 4dsp or its
--              licensors be liable for any loss of data, lost profits, cost
--              or procurement of substitute goods or services, or for any
--              special, incidental, consequential, or indirect damages
--              arising from the use or operation of the designs or
--              accompanying documentation, however caused and on any theory
--              of liability. this limitation will apply even if 4dsp
--              has been advised of the possibility of such damage. this
--              limitation shall apply not-withstanding the failure of the
--              essential purpose of any limited remedies herein.
--
--      from
-- ver  pcb mod    date      changes
-- ===  =======    ========  =======
--
-- 0.0    0        05-12-2006        new version
--
----------------------------------------------
--
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- Specify libraries
--------------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_1164.all;

--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity fmc160_model is
generic (
  CLOCK_PERIOD     : time := 400 ps -- VCO = 2500MHz
);
port (
  i2c_scl          : inout std_logic;
  i2c_sda          : inout std_logic;
  i2c_ga0          : in    std_logic;
  i2c_ga1          : in    std_logic;

  ext_trigger_p    : out   std_logic;
  ext_trigger_n    : out   std_logic;

  dac_dco_p        : out   std_logic;
  dac_dco_n        : out   std_logic;
  dac_dci_p        : in    std_logic;
  dac_dci_n        : in    std_logic;
  dac_frm_p        : in    std_logic;
  dac_frm_n        : in    std_logic;
  dac_p0_p         : in    std_logic_vector(13 downto 0);
  dac_p0_n         : in    std_logic_vector(13 downto 0);
  dac_p1_p         : in    std_logic_vector(13 downto 0);
  dac_p1_n         : in    std_logic_vector(13 downto 0);

  adc_i_dclk_p     : out   std_logic;
  adc_i_dclk_n     : out   std_logic;
  adc_i_d_p        : out   std_logic_vector(11 downto 0);
  adc_i_d_n        : out   std_logic_vector(11 downto 0);
  adc_i_dly_p      : out   std_logic_vector(11 downto 0);
  adc_i_dly_n      : out   std_logic_vector(11 downto 0);
  
  adc_q_dclk_p     : out    std_logic;
  adc_q_dclk_n     : out    std_logic;
  adc_q_d_p        : out    std_logic_vector(11 downto 0);
  adc_q_d_n        : out    std_logic_vector(11 downto 0);
  adc_q_dly_p      : out    std_logic_vector(11 downto 0);
  adc_q_dly_n      : out    std_logic_vector(11 downto 0);

  pg_c2m           : in    std_logic;
  pg_m2c           : out   std_logic;
  prsnt_m2c_l      : out   std_logic

);
end entity fmc160_model;

--------------------------------------------------------------------------------
-- Architecture declaration
--------------------------------------------------------------------------------
architecture fmc160_model_beh of fmc160_model is

--------------------------------------------------------------------------------
-- Constant declarations
--------------------------------------------------------------------------------
constant PTTRN : std_logic_vector(11 downto 0) := "111111100000";

-----------------------------------------------------------------------------------
-- Signal declarations
-----------------------------------------------------------------------------------
signal clk4mhz     : std_logic := '0';
signal adc_clock   : std_logic := '0';
signal adc_dco     : std_logic := '0';
signal dac_clock   : std_logic := '0';
signal dac_dco     : std_logic := '0';

signal adc_i_d     : std_logic_vector(11 downto 0) := "000000000000";
signal adc_i_dly   : std_logic_vector(11 downto 0) := "000000000001";
signal adc_q_d     : std_logic_vector(11 downto 0) := "000000000000";
signal adc_q_dly   : std_logic_vector(11 downto 0) := "000000000010";

signal adc_sdio    : std_logic;
signal dac_sdio    : std_logic;
signal vm_n_int    : std_logic;

-----------------------------------------------------------------------------------
-- Component declarations
-----------------------------------------------------------------------------------
component i2c_slave_model is
generic (
  I2C_ADR : std_logic_vector(6 downto 0) := "1001010"
);
port (
  scl : in std_logic;
  sda : inout std_logic
);
end component;

component fmc160_cpld is
port (  
  CLK4MHZ          : in    std_logic;
  I2C_SCL          : in    std_logic;
  I2C_SDA          : inout std_logic;
  I2C_GA0          : in    std_logic;
  I2C_GA1          : in    std_logic;
  
  PG_C2M           : in    std_logic;
  PG_M2C           : out   std_logic;
  PS_EN            : in    std_logic;
  PS_PG            : in    std_logic;
  CPLD_LED         : out   std_logic;
  
  REF_EN           : out   std_logic; --0=OFF/1=ON
  REF_SEL          : out   std_logic; --0=EXT REF/1=INT REF
  EXT_CLK_REF_SEL  : out   std_logic; --0=EXT CLK/1=EXT REF
  DAC_CLK_SEL      : out   std_logic; --0=PLL/1=EXT
  ADC_CLK_SEL      : out   std_logic; --0=PLL/1=DIV
  
  SYNCSRC_SEL0     : out   std_logic;
  SYNCSRC_SEL1     : out   std_logic;
  
  SCLK_PLL         : out   std_logic;
  SDI_PLL          : out   std_logic;
  LE_PLL           : out   std_logic;
  CE_PLL           : out   std_logic;
  PDBRF_PLL        : out   std_logic;
  PLL_MUXOUT       : in    std_logic;
  PLL_LD           : in    std_logic;
  
  ADC_SCLK         : out   std_logic;
  ADC_SDI          : out   std_logic;
  ADC_SDO          : in    std_logic;
  ADC_CS_L         : out   std_logic;
  ADC_CAL_DLY      : out   std_logic;
  ADC_ND_MODE      : out   std_logic;
  ADC_CAL          : out   std_logic;
  ADC_CAL_RUN      : in    std_logic;
  ADC_I_PD         : out   std_logic;
  ADC_Q_PD         : out   std_logic;
  ADC_TP_MODE      : out   std_logic;
  ADC_DDRPH        : out   std_logic;
  ADC_DES          : out   std_logic;
  ADC_ECE_L        : out   std_logic;
  
  DAC_SCLK         : out   std_logic;
  DAC_SDIO         : inout std_logic;
  DAC_CS_L         : out   std_logic;
  DAC_IRQ          : in    std_logic;
  DAC_RESET        : out   std_logic;
  
  EEPROM_WP        : out   std_logic;
  VM_N_INT         : in    std_logic;
  
  FRONT_IO_HDMI0   : in    std_logic;
  FRONT_IO_HDMI1   : in    std_logic;
  FRONT_IO_HDMI2   : in    std_logic;
  FRONT_IO_HDMI3   : in    std_logic
);
end component;

begin

--------------------------------------------------------------------------------
-- CPLD
--------------------------------------------------------------------------------
fmc160_cpld_inst : fmc160_cpld
port map (  
  clk4mhz          => clk4mhz,
  i2c_scl          => i2c_scl,
  i2c_sda          => i2c_sda,
  i2c_ga0          => '0',
  i2c_ga1          => '0',
  pg_c2m           => pg_c2m,
  pg_m2c           => pg_m2c,
  ps_en            => '1',
  ps_pg            => '1',
  cpld_led         => open,
  ref_en           => open,
  ref_sel          => open,
  ext_clk_ref_sel  => open,
  dac_clk_sel      => open,
  adc_clk_sel      => open,
  syncsrc_sel0     => open,
  syncsrc_sel1     => open,
  sclk_pll         => open,
  sdi_pll          => open,
  ce_pll           => open,
  le_pll           => open,
  pdbrf_pll        => open,
  pll_muxout       => '0',
  pll_ld           => '1',
  adc_sclk         => open,
  adc_sdi          => adc_sdio,
  adc_sdo          => adc_sdio, --not actually connected together on FMC160
  adc_cs_l         => open,
  adc_cal_dly      => open,
  adc_nd_mode      => open,
  adc_cal          => open,
  adc_cal_run      => '0',
  adc_i_pd         => open,
  adc_q_pd         => open,
  adc_tp_mode      => open,
  adc_ddrph        => open,
  adc_des          => open,
  adc_ece_l        => open,
  dac_sclk         => open,
  dac_sdio         => dac_sdio,
  dac_cs_l         => open,
  dac_irq          => '0',
  dac_reset        => open,
  eeprom_wp        => open,
  vm_n_int         => vm_n_int,
  front_io_hdmi0   => '0',
  front_io_hdmi1   => '0',
  front_io_hdmi2   => '0',
  front_io_hdmi3   => '0'
);

dac_sdio <= 'H';

--------------------------------------------------------------------------------
--Clocking model
--------------------------------------------------------------------------------
clk4mhz   <= not clk4mhz   after 125 ns; 

adc_clock <= not adc_clock after (CLOCK_PERIOD/2)*4; -- Divide by 2
adc_dco   <= not adc_dco   after (CLOCK_PERIOD/2)*8; -- Divide by 8

dac_clock <= not dac_clock after (CLOCK_PERIOD/2)*1; -- Divide by 1
dac_dco   <= not dac_dco   after (CLOCK_PERIOD/2)*4; -- Divide by 4

--------------------------------------------------------------------------------
-- ADC model, clock outputs
--------------------------------------------------------------------------------
adc_i_dclk_p <= adc_dco;
adc_i_dclk_n <= not adc_dco;
adc_i_d_p    <= adc_i_d;
adc_i_d_n    <= not adc_i_d;
adc_i_dly_p  <= adc_i_dly;
adc_i_dly_n  <= not adc_i_dly;

adc_q_dclk_p <= adc_dco;
adc_q_dclk_n <= not adc_dco;
adc_q_d_p    <= adc_q_d;
adc_q_d_n    <= not adc_q_d;
adc_q_dly_p  <= adc_q_dly;
adc_q_dly_n  <= not adc_q_dly;

process (adc_clock)
begin
  if (rising_edge(adc_clock)) then

    adc_i_d   <= adc_i_d   + 2;
    adc_i_dly <= adc_i_dly + 2;

    adc_q_d   <= adc_q_d   + 4;
    adc_q_dly <= adc_q_dly + 4;

    end if;
end process;

--------------------------------------------------------------------------------
-- DAC model, clock outputs
--------------------------------------------------------------------------------
dac_dco_p <= dac_dco;
dac_dco_n <= not dac_dco;

--------------------------------------------------------------------------------
-- Trigger model
--------------------------------------------------------------------------------
process
begin
  ext_trigger_p <= '0';
  ext_trigger_n <= '1';
  wait for 80 us;
  ext_trigger_p <= '1';
  ext_trigger_n <= '0';
  wait for 20 us;
  ext_trigger_p <= '0';
  ext_trigger_n <= '1'; 
  wait;
end process;

--------------------------------------------------------------------------------
-- Output
--------------------------------------------------------------------------------
prsnt_m2c_l <= '0';

--------------------------------------------------------------------------------
-- Monitoring
--------------------------------------------------------------------------------
adt7411: i2c_slave_model
generic map (
  I2C_ADR => "1010111"
)
port map (
  scl => i2c_scl,
  sda => i2c_sda
);

i2c_scl  <= 'H';
i2c_sda  <= 'H';
vm_n_int <= 'H';

--------------------------------------------------------------------------------
-- End
--------------------------------------------------------------------------------
end architecture fmc160_model_beh;

