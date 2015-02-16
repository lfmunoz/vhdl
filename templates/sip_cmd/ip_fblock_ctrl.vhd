-------------------------------------------------------------------------------------
-- FILE NAME : ip_fblock_ctrl.vhd
-- AUTHOR    : Luis Munoz
-- COMPANY   : 4DSP
-- UNITS     : Entity       - ip_block_ctrl
--             architecture - ip_block_ctrl
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
--
--
--
--
-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
-- LIBRARIES
-------------------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_1164.all;
library unisim;
  use unisim.vcomponents.all;

-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity ip_fblock_ctrl is
generic (
  START_ADDR             : std_logic_vector(27 downto 0) := x"0000000";
  STOP_ADDR              : std_logic_vector(27 downto 0) := x"00000FF"
);
port (
  rst                    : in  std_logic;
  clk_cmd                : in  std_logic;
  in_cmd_val             : in  std_logic;
  in_cmd                 : in  std_logic_vector(63 downto 0);
  out_cmd_val            : out std_logic;
  out_cmd                : out std_logic_vector(63 downto 0);
  adc_phy_clk            : in  std_logic;
  fifo_valid             : in  std_logic_vector(3 downto 0);
  fifo_wr_en             : out std_logic_vector(3 downto 0);
  reg6                   : out std_logic_vector(31 downto 0);
  reg7                   : in  std_logic_vector(31 downto 0);
  reg8                   : in  std_logic_vector(31 downto 0);
  reg9                   : in  std_logic_vector(31 downto 0);
  reg10                  : in  std_logic_vector(31 downto 0)
);
end ip_fblock_ctrl;


-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of ip_fblock_ctrl is

----------------------------------------------------------------------------------------------------
-- Components
----------------------------------------------------------------------------------------------------
component stellar_generic_cmd is
generic (
  START_ADDR           : std_logic_vector(27 downto 0) := x"0000000";
  STOP_ADDR            : std_logic_vector(27 downto 0) := x"00000FF"
);
port (
  reset                : in  std_logic;
  -- Command Interface
  clk_cmd              : in  std_logic;                     --cmd_in and cmd_out are synchronous to this clock;
  out_cmd              : out std_logic_vector(63 downto 0);
  out_cmd_val          : out std_logic;
  in_cmd               : in  std_logic_vector(63 downto 0);
  in_cmd_val           : in  std_logic;
  -- Register interface
  clk_reg              : in  std_logic;                     --register interface is synchronous to this clock
  out_reg              : out std_logic_vector(31 downto 0); --caries the out register data
  out_reg_val          : out std_logic;                     --the out_reg has valid data  (pulse)
  out_reg_addr         : out std_logic_vector(27 downto 0); --out register address
  in_reg               : in  std_logic_vector(31 downto 0); --requested register data is placed on this bus
  in_reg_val           : in  std_logic;                     --pulse to indicate requested register is valid
  in_reg_req           : out std_logic;                     --pulse to request data
  in_reg_addr          : out std_logic_vector(27 downto 0);  --requested address
  --mailbox interface
  mbx_in_reg           : in  std_logic_vector(31 downto 0); --value of the mailbox to send
  mbx_in_val           : in  std_logic                      --pulse to indicate mailbox is valid
);
end component stellar_generic_cmd;

component pulse2pulse is
port (
  in_clk   : in  std_logic;
  out_clk  : in  std_logic;
  rst      : in  std_logic;
  pulsein  : in  std_logic;
  inbusy   : out std_logic;
  pulseout : out std_logic
);
end component pulse2pulse;

----------------------------------------------------------------------------------------------------
-- Constants
----------------------------------------------------------------------------------------------------
constant ADDR_COMMAND         : std_logic_vector(31 downto 0) := x"00000000";
constant ADDR_CONTROL         : std_logic_vector(31 downto 0) := x"00000001";
constant ADDR_NB_BURSTS       : std_logic_vector(31 downto 0) := x"00000002";
constant ADDR_BURST_SIZE      : std_logic_vector(31 downto 0) := x"00000003";
constant ADDR_FMC_INFO        : std_logic_vector(31 downto 0) := x"00000004";
constant ADDR_REG5			  : std_logic_vector(31 downto 0) := x"00000005";
constant ADDR_REG6			  : std_logic_vector(31 downto 0) := x"00000006";
constant ADDR_REG7			  : std_logic_vector(31 downto 0) := x"00000007";
constant ADDR_REG8			  : std_logic_vector(31 downto 0) := x"00000008";
constant ADDR_REG9			  : std_logic_vector(31 downto 0) := x"00000009";
constant ADDR_REG10			  : std_logic_vector(31 downto 0) := x"0000000A";

----------------------------------------------------------------------------------------------------
-- Signals
----------------------------------------------------------------------------------------------------
signal out_reg_val       : std_logic;
signal out_reg_addr      : std_logic_vector(27 downto 0);
signal out_reg           : std_logic_vector(31 downto 0);
signal in_reg_req        : std_logic;
signal in_reg_addr       : std_logic_vector(27 downto 0);
signal in_reg_val        : std_logic;
signal in_reg            : std_logic_vector(31 downto 0);
signal adc_en_reg        : std_logic_vector(3 downto 0);
signal trigger_sel_reg   : std_logic_vector(1 downto 0);
signal nb_bursts_reg     : std_logic_vector(31 downto 0);
signal burst_size_reg    : std_logic_vector(31 downto 0);
signal cmd_reg           : std_logic_vector(31 downto 0);
signal adc_cmd           : std_logic_vector(31 downto 0);
signal arm               : std_logic;
signal disarm            : std_logic;
signal sw_trigger        : std_logic;
signal clk_to_fpga       : std_logic;
signal ext_trigger       : std_logic;

signal register5         : std_logic_vector(31 downto 0);
signal register6         : std_logic_vector(31 downto 0);
signal register7         : std_logic_vector(31 downto 0);
signal register8         : std_logic_vector(31 downto 0);
signal register9         : std_logic_vector(31 downto 0);
signal register10        : std_logic_vector(31 downto 0);

----------------------------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- Stellar Command Interface
----------------------------------------------------------------------------------------------------
stellar_cmd_inst : stellar_generic_cmd
generic map (
  START_ADDR   => START_ADDR,
  STOP_ADDR    => STOP_ADDR
)
port map (
  reset        => rst,

  clk_cmd      => clk_cmd,
  in_cmd_val   => in_cmd_val,
  in_cmd       => in_cmd,
  out_cmd_val  => out_cmd_val,
  out_cmd      => out_cmd,

  clk_reg      => clk_cmd,
  out_reg_val  => out_reg_val,
  out_reg_addr => out_reg_addr,
  out_reg      => out_reg,

  in_reg_req   => in_reg_req,
  in_reg_addr  => in_reg_addr,
  in_reg_val   => in_reg_val,
  in_reg       => in_reg,

  mbx_in_val   => '0',
  mbx_in_reg   => (others => '0')
);

----------------------------------------------------------------------------------------------------
-- Registers
----------------------------------------------------------------------------------------------------
process (rst, clk_cmd)
begin
  if (rst = '1') then
    cmd_reg         <= (others => '0');
    adc_en_reg      <= (others=>'0');
    trigger_sel_reg <= (others => '0');
    nb_bursts_reg   <= (others => '0');
    burst_size_reg  <= (others => '0');
    in_reg_val      <= '0';
    in_reg          <= (others => '0');
    register5       <= (others =>'0');
    register6       <= (others =>'0');
    register7       <= (others =>'0');
    register8       <= (others =>'0');


  elsif (rising_edge(clk_cmd)) then

    -----------------------------------------------------------------
    -- Write
    -----------------------------------------------------------------
    if (out_reg_val = '1' and out_reg_addr = ADDR_COMMAND) then
      cmd_reg <= out_reg;
    else
      cmd_reg <= (others => '0');
    end if;

    if (out_reg_val = '1' and out_reg_addr = ADDR_CONTROL) then
      adc_en_reg(0)   <= out_reg(0);
      adc_en_reg(1)   <= out_reg(1);
      adc_en_reg(2)   <= out_reg(2);
      adc_en_reg(3)   <= out_reg(3);
      trigger_sel_reg <= out_reg(7 downto 6);
    end if;

    if (out_reg_val = '1' and out_reg_addr = ADDR_NB_BURSTS) then
      nb_bursts_reg <= out_reg;
    end if;

    if (out_reg_val = '1' and out_reg_addr = ADDR_BURST_SIZE) then
      burst_size_reg <= out_reg;
    end if;
	 
    if (out_reg_val = '1' and out_reg_addr = ADDR_REG5) then
      register5 <= out_reg;
    end if;

    if (out_reg_val = '1' and out_reg_addr = ADDR_REG6) then
      register6 <= out_reg;
    end if;

    -----------------------------------------------------------------
    -- Read
    -----------------------------------------------------------------
    if (in_reg_req = '1' and in_reg_addr = ADDR_COMMAND) then
      in_reg_val    <= '1';
      in_reg        <= cmd_reg;
    elsif (in_reg_req = '1' and in_reg_addr = ADDR_CONTROL) then
      in_reg_val    <= '1';
      in_reg        <= x"A5A5" & x"A5A5";

    elsif (in_reg_req = '1' and in_reg_addr = ADDR_NB_BURSTS) then
      in_reg_val    <= '1';
      in_reg        <= nb_bursts_reg;

    elsif (in_reg_req = '1' and in_reg_addr = ADDR_BURST_SIZE) then
      in_reg_val    <= '1';
      in_reg        <= burst_size_reg;

    elsif (in_reg_req = '1' and in_reg_addr = ADDR_FMC_INFO) then
      in_reg_val    <= '1';
      in_reg        <= conv_std_logic_vector(0, 32);
		
	elsif (in_reg_req = '1' and in_reg_addr = ADDR_REG5) then
		in_reg_val	<= '1';
		in_reg  	<= register5;

	elsif (in_reg_req = '1' and in_reg_addr = ADDR_REG6) then
		in_reg_val	<= '1';
		in_reg  	<= register6;

    elsif (in_reg_req = '1' and in_reg_addr = ADDR_REG7) then
		in_reg_val	<= '1';
		in_reg  	<= reg7;

    else
      in_reg_val <= '0';
      in_reg     <= in_reg;
    end if;

  end if;
end process;

-- register mapping
reg6       <= register6;

----------------------------------------------------------------------------------------------------
-- Transfer command pulses to other ADC0 clock domain
----------------------------------------------------------------------------------------------------
adc_cmd_pls: for i in 0 to 31 generate
  pulse2pulse_inst : pulse2pulse
  port map (
    in_clk   => clk_cmd,
    out_clk  => adc_phy_clk,
    rst      => rst,
    pulsein  => cmd_reg(i),
    inbusy   => open,
    pulseout => adc_cmd(i)
  );
end generate;

----------------------------------------------------------------------------------------------------
-- Map pulses
----------------------------------------------------------------------------------------------------
arm         <= adc_cmd(0);
disarm      <= adc_cmd(1);
sw_trigger  <= adc_cmd(2);

ext_trigger <= '0';
----------------------------------------------------------------------------------------------------
-- LVDS Trigger Input
----------------------------------------------------------------------------------------------------

generate_fifo_ctrl0:
for I in 0 to 3 generate

    fifo_ctrl_inst0:
    entity work.fifo_ctrl
    port map (
       rst             => rst,
       clk             => adc_phy_clk,
       arm             => arm,
       disarm          => disarm,
       adc0_en_reg     => adc_en_reg(0),
       sw_trigger      => sw_trigger,
       trigger_sel_reg => trigger_sel_reg,
       fifo_valid      => fifo_valid(I),
       ext_trigger     => ext_trigger,
       nb_bursts_reg   => nb_bursts_reg,
       burst_size_reg  => burst_size_reg,
       fifo0_wr_en     => fifo_wr_en(I)
    );

end generate;

--****************************************************************************************************
end Behavioral;
--****************************************************************************************************
