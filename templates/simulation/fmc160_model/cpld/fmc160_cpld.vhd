----------------------------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_unsigned.all;

entity fmc160_cpld is
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
end fmc160_cpld;
  
  
architecture fmc160_cpld_syn of fmc160_cpld is

----------------------------------------------------------------------------------------------------
-- Components
----------------------------------------------------------------------------------------------------
component i2cSlave
port (
  i2c_address : in    std_logic_vector(7 downto 1);
  clk         : in    std_logic;
  rst         : in    std_logic;
  sda         : inout std_logic;
  scl         : in    std_logic;
  regaddr     : out   std_logic_vector(7 downto 0);
  datain      : in    std_logic_vector(7 downto 0);
  writeen     : out   std_logic;
  dataout     : out   std_logic_vector(7 downto 0)
);
end component;

----------------------------------------------------------------------------------------------------
-- Constants
----------------------------------------------------------------------------------------------------
constant ADDR_COMMAND         : std_logic_vector(7 downto 0) := x"00";
constant ADDR_CONTROL         : std_logic_vector(7 downto 0) := x"01";
constant ADDR_VERSION         : std_logic_vector(7 downto 0) := x"03";
constant ADDR_I2C_DATA_0      : std_logic_vector(7 downto 0) := x"04";
constant ADDR_I2C_DATA_1      : std_logic_vector(7 downto 0) := x"05";
constant ADDR_I2C_DATA_2      : std_logic_vector(7 downto 0) := x"06";
constant ADDR_I2C_DATA_3      : std_logic_vector(7 downto 0) := x"07";

constant VERSION              : std_logic_vector(7 downto 0) := x"2A";

----------------------------------------------------------------------------------------------------
-- Signals
----------------------------------------------------------------------------------------------------
signal i2c_address  : std_logic_vector(7 downto 1);
signal rst_cnt      : integer range 0 to 63 := 0;
signal rst          : std_logic := '1';
signal regaddr      : std_logic_vector(7 downto 0);
signal datain       : std_logic_vector(7 downto 0);
signal writeen      : std_logic;
signal dataout      : std_logic_vector(7 downto 0);

signal reg_control  : std_logic_vector(7 downto 0);

signal spi_dval     : std_logic;
signal spi_data     : std_logic_vector(31 downto 0);
signal clk_dval     : std_logic;
signal adc_dval     : std_logic;
signal dac_dval     : std_logic;
signal shift        : std_logic_vector(31 downto 0);
signal clk_cnt      : integer range 0 to 3;
signal ser_cnt      : integer range 0 to 33;

signal spi_sclk     : std_logic;
signal spi_sdo      : std_logic;
signal spi_rw       : std_logic; --  0=Write, 1=Read
signal hiz          : std_logic;

begin

----------------------------------------------------------------------------------------------------
-- Set slave address
----------------------------------------------------------------------------------------------------
i2c_address  <= "01111" & i2c_ga1 & i2c_ga0;
--i2c_address <= "01111" & '0' & '0'; --i2c_ga1 & i2c_ga0;

----------------------------------------------------------------------------------------------------
-- Reset logic
----------------------------------------------------------------------------------------------------
process (clk4mhz)
begin
  if (rising_edge(clk4mhz)) then
    if (rst_cnt < 63) then
      rst_cnt <= rst_cnt + 1;
      rst <= '1';
    else
      rst_cnt <= rst_cnt;
      rst <= '0';
    end if;
  end if;
end process;

----------------------------------------------------------------------------------------------------
-- I2C Salve control
----------------------------------------------------------------------------------------------------
i2cSlave_inst : i2cSlave
port map (
  i2c_address => i2c_address,
  clk         => clk4mhz,
  rst         => rst,
  sda         => i2c_sda,
  scl         => i2c_scl,
  regaddr     => regaddr,
  datain      => datain,
  writeen     => writeen,
  dataout     => dataout
);

----------------------------------------------------------------------------------------------------
-- Write Registers
----------------------------------------------------------------------------------------------------
process (rst, clk4mhz)
begin
  if (rst = '1') then

	 reg_control  <= "00000000";
    clk_dval     <= '0';
    adc_dval     <= '0';
    dac_dval     <= '0';
    spi_dval     <= '0';
    spi_data     <= (others => '0');
	 
  elsif (rising_edge(clk4mhz)) then

    -- Command register
    if (writeen = '1' and regaddr = ADDR_COMMAND) then
      clk_dval <= dataout(0);
	    adc_dval <= dataout(1);
      dac_dval <= dataout(2);
      spi_dval <= or_reduce(dataout(2 downto 0));
    else
      spi_dval <= '0';
    end if;

    -- Control register
    if (writeen = '1' and regaddr = ADDR_CONTROL) then
      reg_control <= dataout;
    end if;

    -- SPI register LSB
    if (writeen = '1' and regaddr = ADDR_I2C_DATA_0) then
      spi_data( 7 downto  0) <= dataout;
    end if;
    -- SPI register 2nd byte
    if (writeen = '1' and regaddr = ADDR_I2C_DATA_1) then
      spi_data(15 downto  8) <= dataout;
    end if;
    -- SPI register 3rd byte
    if (writeen = '1' and regaddr = ADDR_I2C_DATA_2) then
      spi_data(23 downto 16) <= dataout;
    end if;
    -- SPI register MSB
	  if (writeen = '1' and regaddr = ADDR_I2C_DATA_3) then
      spi_data(31 downto 24) <= dataout;
    end if;

  end if;
end process;

----------------------------------------------------------------------------------------------------
-- Read Registers
----------------------------------------------------------------------------------------------------
datain <=
  reg_control        when regaddr = ADDR_CONTROL    else
  VERSION            when regaddr = ADDR_VERSION    else
  shift( 7 downto 0) when regaddr = ADDR_I2C_DATA_0 else
  shift(15 downto 8) when regaddr = ADDR_I2C_DATA_1 else
  (others => '0');

 ----------------------------------------------------------------------------------------------------
 -- Program SPI configurations
 ----------------------------------------------------------------------------------------------------
process (rst, clk4mhz)
begin
  if (rst = '1') then
    clk_cnt      <= 0;		 
    ser_cnt      <= 0;		 
    LE_PLL       <= '1';
	  ADC_CS_L     <= '1';
	  DAC_CS_L     <= '1';
    spi_sclk     <= '0';
    shift        <= (others => '0');
    spi_rw       <= '0';
    hiz          <= '0';
  elsif (rising_edge(clk4mhz)) then
 
    if (spi_dval = '1' or clk_cnt = 3) then
      clk_cnt <= 0;
    else
      clk_cnt <= clk_cnt + 1;
    end if;
    
    if (spi_dval = '1' and clk_dval = '1') then
      ser_cnt <= 32+1;		 
    elsif (spi_dval = '1' and adc_dval = '1') then
	    ser_cnt <= 24+1;
    elsif (spi_dval = '1' and dac_dval = '1') then
	    ser_cnt <= 16+1;
    elsif (clk_cnt = 0 and ser_cnt /= 0) then
      ser_cnt <= ser_cnt - 1;
    end if;
 
    if (ser_cnt /= 0) then
	    LE_PLL   <= not clk_dval;			
		  ADC_CS_L <= not adc_dval;
		  DAC_CS_L <= not dac_dval;
    else
      LE_PLL   <= '1';
      ADC_CS_L <= '1';
      DAC_CS_L <= '1';
    end if;
 
    --Generate SPI Clock
    if (ser_cnt /= 0 and clk_cnt = 1) then
      spi_sclk <= '1';
    elsif (ser_cnt /= 0 and clk_cnt = 3) then
      spi_sclk <= '0';
    end if;

    --Shift register (SDI out, SDO in)
    if (spi_dval = '1' and clk_dval = '1') then 
      shift <= spi_data;
    elsif (spi_dval = '1' and adc_dval = '1') then 
	    shift <= spi_data(23 downto 0) & x"00";
    elsif (spi_dval = '1' and dac_dval = '1') then
	    shift <= spi_data(15 downto 0) & x"0000";
    elsif (ser_cnt /= 0 and clk_cnt = 3) then
      shift <= shift(30 downto 0) & spi_sdo;
    end if;

    --Determine if the SDO pin need to go Hi-Z during read cycle
    if (spi_dval = '1' and dac_dval = '1' and spi_data(15) = '1') then
	    spi_rw <= '1';
	  elsif (ser_cnt = 0) then
	    spi_rw <= '0';		  
	  end if;

    --Generate control signal that make the SDO pin Hi-Z
    --Only DAC uses 3 wire interface (CLK cannot read back, ADC uses 4 wire interface)
    if (spi_rw = '1' and ser_cnt = 9 and clk_cnt = 3) then
      hiz <= '1';
    elsif (spi_rw = '0') then
      hiz <= '0';
    end if;
 	  
  end if;
end process;
 
----------------------------------------------------------------------------------------------------
-- Slave SDO selection
----------------------------------------------------------------------------------------------------
spi_sdo <= ADC_SDO when adc_dval = '1' else DAC_SDIO;

----------------------------------------------------------------------------------------------------
-- Map outputs
--                 0          1
--reg_control(0)   INT REF    EXT REF
--reg_control(1)   INT CLK    EXT CLK
--reg_control(2)   PLL /1     PLL /2
----------------------------------------------------------------------------------------------------
PG_M2C           <= PG_C2M and PS_PG;
CPLD_LED         <= PLL_LD;

REF_EN           <= not reg_control(0);  --0=REF OFF/1=REF ON
REF_SEL          <= not reg_control(0);  --0=EXT REF/1=INT REF
EXT_CLK_REF_SEL  <= reg_control(0);      --0=EXT CLK/1=EXT REF
DAC_CLK_SEL      <= reg_control(1);      --0=PLL/1=EXT
ADC_CLK_SEL      <= reg_control(2);      --0=PLL/1=DIV
SYNCSRC_SEL0     <= reg_control(3);
SYNCSRC_SEL1     <= reg_control(4);      
--
--
EEPROM_WP        <= not reg_control(7);

SCLK_PLL         <= spi_sclk;
SDI_PLL          <= shift(31);
CE_PLL           <= '1';                --'0' for power down ADF4351
PDBRF_PLL        <= not reg_control(1); --'0' mutes RF output

ADC_SCLK         <= spi_sclk;
ADC_SDI          <= shift(31);
ADC_CAL_DLY      <= '0'; 
ADC_ND_MODE      <= '0'; --0=1:2 mode / 1=1:1 mode
ADC_CAL          <= '0'; --OR'd with SPI setting in ECM
ADC_I_PD         <= '0'; --OR'd with SPI setting in ECM
ADC_Q_PD         <= '0'; --OR'd with SPI setting in ECM
ADC_TP_MODE      <= '0'; --Ignored in ECM
ADC_DDRPH        <= '0'; --Ignored in ECM
ADC_DES          <= '0'; --Ignored in ECM
ADC_ECE_L        <= '0'; --Enable ECM

DAC_SCLK         <= spi_sclk;
DAC_SDIO         <= shift(31) when hiz = '0' else 'Z';
DAC_RESET        <= '0';

----------------------------------------------------------------------------------------------------
-- End
----------------------------------------------------------------------------------------------------
end fmc160_cpld_syn;
