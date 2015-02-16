-------------------------------------------------------------------------------------
-- FILE NAME : fifo_ctrl.vhd
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - fifo_ctrl
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : AUG 21, 2014
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- 
--
--
-- TO-DO 
-- ===========
-- 1. Change subtraction counting as a generic or constant
--
--
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
Library UNISIM;
    use UNISIM.vcomponents.all;

-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity fifo_ctrl is
port (
    clk            : in std_logic; 
    rst            : in std_logic;
    arm            : in std_logic;
    disarm         : in std_logic;
    adc0_en_reg    : in std_logic;
    sw_trigger     : in std_logic;
    trigger_sel_reg : in std_logic_vector(1 downto 0);
    fifo_valid     : in std_logic;
    ext_trigger    : in std_logic;
    nb_bursts_reg  : in std_logic_vector(31 downto 0);
    burst_size_reg : in std_logic_vector(31 downto 0);
    fifo0_wr_en    : out std_logic
);
end fifo_ctrl;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of fifo_ctrl is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
constant EXT_TRIGGER_DISABLE  : std_logic_vector(1 downto 0) := "00";
constant EXT_TRIGGER_RISE     : std_logic_vector(1 downto 0) := "01";
constant EXT_TRIGGER_FALL     : std_logic_vector(1 downto 0) := "10";
constant EXT_TRIGGER_BOTH     : std_logic_vector(1 downto 0) := "11";

-------------------------------------------------------------------------------------
-- SIGNALS
-------------------------------------------------------------------------------------
signal armed             : std_logic;
signal trigger           : std_logic;
signal ext_trigger_prev0 : std_logic;
signal ext_trigger_prev1 : std_logic;
signal ext_trigger_re    : std_logic;
signal ext_trigger_fe    : std_logic;
signal fifo0_wr_en_sig   : std_logic;
signal unlim_bursts      : std_logic;
signal nb_bursts_cnt     : std_logic_vector(31 downto 0);
signal burst_size_cnt    : std_logic_vector(31 downto 0);
signal adc0_en           : std_logic;

--***********************************************************************************
begin
--***********************************************************************************

process (rst, clk)
begin
  if (rst = '1') then
    ext_trigger_prev0 <= '0';
    ext_trigger_prev1 <= '0';
    ext_trigger_re    <= '0';
    ext_trigger_fe    <= '0';
    trigger           <= '0';
    armed             <= '0';
    adc0_en           <= '0';
    unlim_bursts      <= '0';
    nb_bursts_cnt     <= (others => '0');
    burst_size_cnt    <= (others => '0');
    fifo0_wr_en_sig   <= '0';

  elsif (rising_edge(clk)) then

    ext_trigger_prev0 <= ext_trigger;
    ext_trigger_prev1 <= ext_trigger_prev0;

    -- Generate pulse on rising edge external trigger
    if (ext_trigger_prev0 = '1' and ext_trigger_prev1 = '0') then
      ext_trigger_re <= '1';
    else
      ext_trigger_re <= '0';
    end if;

    -- Generate pulse on falling edge external trigger
    if (ext_trigger_prev0 = '0' and ext_trigger_prev1 = '1') then
      ext_trigger_fe <= '1';
    else
      ext_trigger_fe <= '0';
    end if;

    -- Select the trigger source
    if (armed = '1' and sw_trigger = '1') then
      trigger <= '1';
    elsif (armed = '1' and ext_trigger_re = '1' and (trigger_sel_reg = EXT_TRIGGER_RISE or trigger_sel_reg = EXT_TRIGGER_BOTH) ) then
      trigger <= '1';
    elsif (armed = '1' and ext_trigger_fe = '1' and (trigger_sel_reg = EXT_TRIGGER_FALL or trigger_sel_reg = EXT_TRIGGER_BOTH) ) then
      trigger <= '1';
    else
      trigger <= '0';
    end if;

    -- Latch channel enable
    if (arm = '1' and armed = '0') then
      adc0_en <= adc0_en_reg;
    end if;

    if (arm = '1' and armed = '0') then
      armed <= '1';
    elsif (disarm = '1' and armed = '1') then
      armed <= '0';
    elsif (unlim_bursts = '0' and nb_bursts_cnt = 0 and burst_size_cnt = 0) then
      armed <= '0';
    end if;

    -- No of burst set to 0 means unlimited amount of bustst
    if (armed = '0') then
      unlim_bursts <= not or_reduce(nb_bursts_reg);
    end if;

    -- When not (yet) armed copy the register into the counter
    if (armed = '0') then
      nb_bursts_cnt <= nb_bursts_reg;
    elsif (trigger = '1' and burst_size_cnt = 0 and nb_bursts_cnt /= 0) then
      nb_bursts_cnt <= nb_bursts_cnt - '1';
    end if;

    -- Conversion start when the burst size counter is unequal to 0
    -- Load the burst size counter on a trigger, when the previous burst is
    -- finished and one or more channels are selected.
    if (armed = '0') then
      burst_size_cnt <= (others => '0');
    elsif (trigger = '1' and burst_size_cnt = 0 and (nb_bursts_cnt /= 0 or unlim_bursts = '1')) then
      burst_size_cnt <= burst_size_reg;
    -- Decrease the burst size counter every conversion
    elsif (burst_size_cnt /= 0 and fifo_valid = '1') then
      burst_size_cnt <= burst_size_cnt - 8;
    end if;

    if (trigger = '1' and adc0_en = '1' and burst_size_cnt = 0 and (nb_bursts_cnt /= 0 or unlim_bursts = '1')) then
      fifo0_wr_en_sig <= '1';
    elsif (burst_size_cnt = 8 and fifo_valid = '1') then
      fifo0_wr_en_sig <= '0';
    end if;

    fifo0_wr_en <= fifo0_wr_en_sig;

  end if;
end process;

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

