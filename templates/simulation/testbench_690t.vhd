--------------------------------------------------------------------------------
-- file name : testbench_690t.vhd
--
-- author    : Luis F. Munoz
--
-- company   : 4dsp
--
-- date      : 3/4/2014
--
-- language  : vhdl
--
--------------------------------------------------------------------------------
-- description
-- ===========
-- Testbench for the VP780 + FMC160
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
library std;
  use std.textio.all;
library work;
  use work.txt_util.all;
  use work.std_logic_textio.all;

--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity testbench_690t is
end entity testbench_690t;

--------------------------------------------------------------------------------
-- Architecture declaration
--------------------------------------------------------------------------------
architecture testbench_beh of testbench_690t is

--------------------------------------------------------------------------------
-- Constant declarations
--------------------------------------------------------------------------------
constant CLK_200_MHZ : time := 5 ns;
constant CLK_100_MHZ : time := 10 ns;
constant CLK_300_MHZ : time := 3.3333 ns;
constant CLK_25_MHZ  : time := 40 ns;
constant CLK_167_MHZ : time := 6 ns;

-----------------------------------------------------------------------------------
-- Signal declarations
-----------------------------------------------------------------------------------
signal i2c_scl          : std_logic;
signal i2c_sda          : std_logic;

signal ext_trigger_p    : std_logic;
signal ext_trigger_n    : std_logic;
signal dac_dco_p        : std_logic;
signal dac_dco_n        : std_logic;
signal dac_dci_p        : std_logic;
signal dac_dci_n        : std_logic;
signal dac_frm_p        : std_logic;
signal dac_frm_n        : std_logic;
signal dac_p0_p         : std_logic_vector(13 downto 0);
signal dac_p0_n         : std_logic_vector(13 downto 0);
signal dac_p1_p         : std_logic_vector(13 downto 0);
signal dac_p1_n         : std_logic_vector(13 downto 0);
signal adc_i_dclk_p     : std_logic;
signal adc_i_dclk_n     : std_logic;
signal adc_i_d_p        : std_logic_vector(11 downto 0);
signal adc_i_d_n        : std_logic_vector(11 downto 0);
signal adc_i_dly_p      : std_logic_vector(11 downto 0);
signal adc_i_dly_n      : std_logic_vector(11 downto 0);
signal adc_q_dclk_p     : std_logic;
signal adc_q_dclk_n     : std_logic;
signal adc_q_d_p        : std_logic_vector(11 downto 0);
signal adc_q_d_n        : std_logic_vector(11 downto 0);
signal adc_q_dly_p      : std_logic_vector(11 downto 0);
signal adc_q_dly_n      : std_logic_vector(11 downto 0);

signal pg_m2c           : std_logic;
signal prsnt_m2c_l      : std_logic;

signal sysclk_p         : std_logic := '1';
signal sysclk_n         : std_logic := '0';
signal clk25            : std_logic := '1';
signal clk_synth        : std_logic := '1';
signal clk200_p         : std_logic := '1';
signal clk200_n         : std_logic := '0';
signal clk300_p         : std_logic := '1';
signal clk300_n         : std_logic := '0';

signal cpu_reset        : std_logic := '0';

--***********************************************************************************
begin
--***********************************************************************************

--------------------------------------------------------------------------------
-- Clock & Reset generation
--------------------------------------------------------------------------------
sysclk_p <= not sysclk_p   after CLK_100_MHZ/2;
sysclk_n <= not sysclk_p;

clk25     <= not clk25     after CLK_25_MHZ/2;
clk_synth <= not clk_synth after CLK_167_MHZ/2;

clk200_p <= not clk200_p    after CLK_200_MHZ/2;
clk200_n <= not clk200_p;

clk300_p <= not clk300_p   after CLK_300_MHZ/2;
clk300_n <= not clk300_p;

cpu_reset   <= '1'         after CLK_200_MHZ/2 * 10;

--------------------------------------------------------------------------------
-- FPGA instantiation
--------------------------------------------------------------------------------
inst0_fpga: 
entity work.vp780_fmc160_690t
port map (
--STAR sip_i2c_master, ID=0 (ext_i2c)
    i2c_scl_0           => i2c_scl,
    i2c_sda_0           => i2c_sda,
--STAR sip_vp780_host_if, ID=8 (ext_vp780_host_if)
    flash_address_8      => open,
    flash_ce_n_8         => open,
    flash_data_8         => open,
    flash_oe_n_8         => open,
    flash_we_n_8         => open,
    fp_cp_8              => open,
    gpio_led_8           => open,
    host_if_i2c_scl_8    => open,
    host_if_i2c_sda_8    => open,
    pci_exp_rxn_8        => (others => '0'),
    pci_exp_rxp_8        => (others => '0'),
    pci_exp_txn_8        => open,
    pci_exp_txp_8        => open,
    sys_clk_n_8          => sysclk_p,
    sys_clk_p_8          => sysclk_n,
    sys_reset_n_8        => cpu_reset,
--STAR sip_clkrst_vp780, ID=0 (ext_vp780_clkin)
    aux_clk_0            => clk25,
    clk200_n_0           => clk200_n,
    clk200_p_0           => clk200_p,
    clk300_n_0           => clk300_n,
    clk300_p_0           => clk300_p,
    clk_synth_0_0        => clk_synth,
    clk_synth_1_0        => clk_synth,
--STAR sip_fmc160, ID=0 (ext_fmc160)
    adc_i_d_n_0         => adc_i_d_n,    
    adc_i_d_p_0         => adc_i_d_p,      
    adc_i_dclk_n_0      => adc_i_dclk_n,
    adc_i_dclk_p_0      => adc_i_dclk_p,
    adc_i_dly_n_0       => adc_i_dly_n,             
    adc_i_dly_p_0       => adc_i_dly_p, 
    adc_q_d_n_0         => adc_q_d_n,               
    adc_q_d_p_0         => adc_q_d_p,               
    adc_q_dclk_n_0      => adc_q_dclk_n,
    adc_q_dclk_p_0      => adc_q_dclk_p,                 
    adc_q_dly_n_0       => adc_q_dly_n,              
    adc_q_dly_p_0       => adc_q_dly_p,              
    dac_dci_n_0         => dac_dci_n,                     
    dac_dci_p_0         => dac_dci_p,     
    dac_dco_p_0         => dac_dco_p,
    dac_dco_n_0         => dac_dco_n,   
    dac_frm_n_0         => dac_frm_n,
    dac_frm_p_0         => dac_frm_p,
    dac_p0_n_0          => dac_p0_n,
    dac_p0_p_0          => dac_p0_p,
    dac_p1_n_0          => dac_p1_n,
    dac_p1_p_0          => dac_p1_p,
    ext_trigger_n_0     => ext_trigger_n,                
    ext_trigger_p_0     => ext_trigger_p,                 
    pg_m2c_0            => pg_m2c,
    prsnt_m2c_l_0       => prsnt_m2c_l
);

--------------------------------------------------------------------------------
-- FMC160 model instantiation
--------------------------------------------------------------------------------
fmc160_model_inst:
entity work.fmc160_model
generic map (
  CLOCK_PERIOD    => 400 ps -- VCO = 2500MHz
)
port map (
  i2c_scl         => i2c_scl,
  i2c_sda         => i2c_sda,
  i2c_ga0         => '0',
  i2c_ga1         => '0',
  
  ext_trigger_p   => ext_trigger_p,
  ext_trigger_n   => ext_trigger_n,

  dac_dco_p       => dac_dco_p,
  dac_dco_n       => dac_dco_n,
  dac_dci_p       => dac_dci_p,
  dac_dci_n       => dac_dci_n,
  dac_frm_p       => dac_frm_p,
  dac_frm_n       => dac_frm_n,
  dac_p0_p        => dac_p0_p,
  dac_p0_n        => dac_p0_n,
  dac_p1_p        => dac_p1_p,
  dac_p1_n        => dac_p1_n,

  adc_i_dclk_p    => adc_i_dclk_p,
  adc_i_dclk_n    => adc_i_dclk_n,
  adc_i_d_p       => adc_i_d_p,   
  adc_i_d_n       => adc_i_d_n,  
  adc_i_dly_p     => adc_i_dly_p, 
  adc_i_dly_n     => adc_i_dly_n, 
  
  adc_q_dclk_p    => adc_q_dclk_p,
  adc_q_dclk_n    => adc_q_dclk_n,
  adc_q_d_p       => adc_q_d_p,   
  adc_q_d_n       => adc_q_d_n,  
  adc_q_dly_p     => adc_q_dly_p, 
  adc_q_dly_n     => adc_q_dly_n, 

  pg_c2m          => '1',
  pg_m2c          => pg_m2c,     
  prsnt_m2c_l     => prsnt_m2c_l

);

--***********************************************************************************
end architecture testbench_beh;
--***********************************************************************************
