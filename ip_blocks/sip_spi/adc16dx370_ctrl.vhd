  -------------------------------------------------------------------------------------
  -- FILE NAME : fmc408_lmk04828_ctrl.vhd
  --
  -- AUTHOR    : Fearghal Rudden
  --
  -- COMPANY   : 4DSP
  --
  -- ITEM      : 1
  --
  -- UNITS     : Entity       - fmc408_lmk04828_ctrl
  --             architecture - fmc408_lmk04828_ctrl_syn
  --
  -- LANGUAGE  : VHDL
  --
  -------------------------------------------------------------------------------------
  --
  -------------------------------------------------------------------------------------
  -- DESCRIPTION
  -- ===========
  --  1-bit R/W, 2-bit multi-byte field (W1, W0), 13-bit address field (A12-A0), 8-bit data
  --  Clocked in MSB first (R/W), and LSB (D0) last
  --  Serial data is clocked in on the rising edge of SCK

  -- fmc408_lmk04828_ctrl
  -- Notes: fmc408_lmk04828_ctrl
  -------------------------------------------------------------------------------------
  --  Disclaimer: LIMITED WARRANTY AND DISCLAIMER. These designs are
  --              provided to you as is.  4DSP specifically disclaims any
  --              implied warranties of merchantability, non-infringement, or
  --              fitness for a particular purpose. 4DSP does not warrant that
  --              the functions contained in these designs will meet your
  --              requirements, or that the operation of these designs will be
  --              uninterrupted or error free, or that defects in the Designs
  --              will be corrected. Furthermore, 4DSP does not warrant or
  --              make any representations regarding use or the results of the
  --              use of the designs in terms of correctness, accuracy,
  --              reliability, or otherwise.
  --
  --              LIMITATION OF LIABILITY. In no event will 4DSP or its
  --              licensors be liable for any loss of data, lost profits, cost
  --              or procurement of substitute goods or services, or for any
  --              special, incidental, consequential, or indirect damages
  --              arising from the use or operation of the designs or
  --              accompanying documentation, however caused and on any theory
  --              of liability. This limitation will apply even if 4DSP
  --              has been advised of the possibility of such damage. This
  --              limitation shall apply not-withstanding the failure of the
  --              essential purpose of any limited remedies herein.
  --
  ----------------------------------------------

  -- Library declarations
  library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;
  library unisim;
    use unisim.vcomponents.all;

  entity adc16dx370_ctrl is
    generic
    (
      START_ADDR             : std_logic_vector(27 downto 0) := x"0000000";--x"0005400";
      STOP_ADDR              : std_logic_vector(27 downto 0) := x"00000FF"--x"00073FF"
    );
    port (
      rst                    : in  std_logic;
      clk                    : in  std_logic;

      -- Command Interface
      clk_cmd                : in    std_logic;
      in_cmd_val             : in    std_logic;
      in_cmd                 : in    std_logic_vector(63 downto 0);
      out_cmd_val            : out   std_logic;
      out_cmd                : out   std_logic_vector(63 downto 0);

      -- Spi interface
      trig_n_cs              : out   std_logic;
      trig_sclk              : out   std_logic;
      trig_sdo               : out   std_logic;
      trig_clksel0           : in    std_logic;
      debug                  : out   std_logic_vector(63 downto 0)
   );
  end adc16dx370_ctrl;

  architecture Behavioural of adc16dx370_ctrl is

  ----------------------------------------------------------------------------------------------------
  -- Components
  ----------------------------------------------------------------------------------------------------


  component  pulse2pulse
  port (
    rst      : in  std_logic;
    in_clk   : in  std_logic;
    out_clk  : in  std_logic;
    pulsein  : in  std_logic;
    pulseout : out std_logic;
    inbusy   : out std_logic
  );
  end component;


  ----------------------------------------------------------------------------------------------------
  -- Constants
  ----------------------------------------------------------------------------------------------------
  constant ADDR_MAX_WR  : std_logic_vector(27 downto 0) := x"0001FFF";
  constant ADDR_MAX_RD  : std_logic_vector(27 downto 0) := x"0001FFF";

  attribute keep : string;
  ----------------------------------------------------------------------------------------------------
  -- Signals
  ----------------------------------------------------------------------------------------------------
  type sh_states is (idle, instruct, data_wait, data_io, data_valid, update, update_instruct, update_data_io);
  signal sh_state       : sh_states;


  signal out_reg_val          : std_logic;
  signal out_reg_addr         : std_logic_vector(27 downto 0);
  signal out_reg              : std_logic_vector(31 downto 0);

  signal in_reg_req           : std_logic;
  signal in_reg_addr          : std_logic_vector(27 downto 0);
  signal in_reg_val           : std_logic;
  signal in_reg               : std_logic_vector(31 downto 0);

  signal sclk_prebuf          : std_logic;
  signal serial_clk           : std_logic;
  signal sclk_ext             : std_logic;

  signal trig_sdi             : std_logic;
  signal trig_sdi_in          : std_logic;
  signal inst_val             : std_logic;
  signal inst_reg_val         : std_logic;
  signal inst_rw              : std_logic;
  signal inst_reg             : std_logic_vector(12 downto 0); --IMPORTANT
  signal data_reg             : std_logic_vector(7 downto 0); -- IMPORTANT

  signal shifting             : std_logic;
  signal shift_reg            : std_logic_vector(23 downto 0); -- IMPORTANT
  signal read_byte_val        : std_logic;
  signal data_read_val        : std_logic;
  signal data_write_val       : std_logic;
  signal data_read            : std_logic_vector(7 downto 0);

  signal sh_counter     : integer;
  signal read_n_write   : std_logic;
  signal ncs_int        : std_logic;
  signal ncs_trig       : std_logic;
  --signal ncs_int_w      : std_logic;
  signal busy           : std_logic;

  signal out_mailbox_data_sig : std_logic_vector(31 downto 0);

  -- debug

--signal out_cmd_t : std_logic_vector(63 downto 0);


--  signal probe0 : std_logic_vector(127 downto 0);
--  attribute keep of shift_reg : signal is "true"; 
--attribute keep of inst_val : signal is "true"; 
--attribute keep of data_read : signal is "true"; 
--attribute keep of data_read_val : signal is "true"; 



--*****************************************************************************************************
  begin
--*****************************************************************************************************
--ila_inst0: entity work.ila_0
--PORT MAP (
--    clk => clk_cmd,
--    probe0 => probe0
--);
--
--
--probe0(23 downto 0)            <= shift_reg(23 downto 0);           
--probe0(24)                     <= inst_val;
--probe0(64 downto 25)           <= (others=>'0');
--probe0(72 downto  65)          <= data_read;
--probe0(73)                     <= data_read_val;
--probe0(127 downto 74)          <= (others=>'0');
debug(23 downto 0)               <= shift_reg(23 downto 0); 
debug(24)                        <= inst_val;
debug(32 downto 25)              <= data_read(7 downto 0);
debug(33)                        <= data_read_val;
debug(63 downto 34)              <= (others=>'0');
  ----------------------------------------------------------------------------------------------------
  -- Generate serial clock (max 25MHz)
  ----------------------------------------------------------------------------------------------------
  --process (clk)
  --  -- Divide by 2^4 = 16, CLKmax = 16 x 25MHz = 400MHz
  --  variable clk_div : std_logic_vector(3 downto 0) := (others => '0');
  --begin
  --  if (rising_edge(clk)) then
  --    clk_div    := clk_div + '1';
  --    -- The slave samples the data on the rising edge of SCLK.
  --    -- therefore we make sure the external clock is slightly
  --    -- after the internal clock.
  --    sclk_ext    <= clk_div(clk_div'length-1);
  --    sclk_prebuf <= sclk_ext;
  --  end if;
  --end process;

  --bufg_sclk : bufg
  --port map (
  --  i => sclk_prebuf,
  --  o => serial_clk
  --);
serial_clk <= clk;
sclk_ext  <= serial_clk;

  ----------------------------------------------------------------------------------------------------
  -- Stellar Command Interface
  ----------------------------------------------------------------------------------------------------
  fmc408_stellar_cmd_inst : entity work.fmc408_stellar_cmd
  generic map
  (
    START_ADDR   => START_ADDR,
    STOP_ADDR    => STOP_ADDR
  )
  port map
  (
    reset        => rst,

    clk_cmd      => clk_cmd,
    in_cmd_val   => in_cmd_val,
    in_cmd       => in_cmd,
    out_cmd_val  => out_cmd_val,
    out_cmd      => out_cmd,

    clk_reg      => clk_cmd, --LM clk,
    out_reg_val  => out_reg_val,
    out_reg_addr => out_reg_addr,
    out_reg      => out_reg,

    in_reg_req   => in_reg_req,
    in_reg_addr  => in_reg_addr,
    in_reg_val   => in_reg_val,
    in_reg       => in_reg,

    mbx_out_reg  => out_mailbox_data_sig,
    mbx_out_val  => open,
    mbx_in_reg   => (others=>'0'),
    mbx_in_val   => '0'
  );

  ----------------------------------------------------------------------------------------------------
  -- Shoot commands to the state machine
  ----------------------------------------------------------------------------------------------------

  process (rst, clk_cmd) --LM clk
  begin
    if (rst = '1') then

      in_reg_val     <= '0';
      in_reg         <= (others => '0');
      inst_val       <= '0';
      inst_rw        <= '0';
      inst_reg       <= (others=> '0');
      data_reg       <= (others=> '0');
		--data_read      <= (others=> '0');

    elsif (rising_edge(clk_cmd)) then -- LM clk

    if (in_reg_addr <= ADDR_MAX_RD) then --(in_reg_req = '1' and in_reg_addr <= ADDR_MAX_RD) then
     -- read from serial if when address is within device range
      in_reg_val <= data_read_val;
      in_reg     <= conv_std_logic_vector(0, 24) & data_read;
    else
      in_reg_val <= '0';
      in_reg     <= in_reg;
    end if;

      -- Write instruction, only when address is within device range
      if (out_reg_val = '1' and out_reg_addr <= ADDR_MAX_WR) then
        inst_val <= '1';
        inst_rw  <= '0'; -- write
        inst_reg <= out_reg_addr(12 downto 0);
        data_reg <= out_reg(7 downto 0);
      -- Read instruction, only when address is within LMK04828 range
      elsif (in_reg_req = '1' and in_reg_addr <= ADDR_MAX_RD) then
        inst_val <= '1';
        inst_rw  <= '1'; -- read
        inst_reg <= in_reg_addr(12 downto 0);
        data_reg <= data_reg;
      -- No instruction
      else
        inst_val <= '0';
        inst_rw  <= inst_rw;
        inst_reg <= inst_reg;
        data_reg <= data_reg;
      end if;

    end if;
  end process;

  ----------------------------------------------------------------------------------------------------
  -- Serial interface state-machine
  ----------------------------------------------------------------------------------------------------
  process (rst, serial_clk)
  begin
    if (rst = '1') then

      sh_state     <= idle;
      sh_counter   <= 0;
      read_n_write <= '0';
		--ncs_int_r    <= '1';
		--ncs_int_w    <= '1';
		ncs_int      <= '1';
		shifting     <= '0';

    elsif (rising_edge(serial_clk)) then

      -- Main state machine
      case sh_state is

        when idle =>
          sh_counter <= shift_reg'length-data_reg'length-1; --total length minus data bytes;
          -- Accept every instruction
          if (inst_reg_val = '1') then
 		    shifting     <= '1';
			read_n_write <= inst_rw; -- 0 = write, 1 = read
            ncs_int      <= '0';
            sh_state     <= instruct;
          else
 		    shifting     <= '0';
		    ncs_int      <= '1';
          end if;

        when instruct =>
          if (sh_counter = 0) then
 			sh_counter <= data_reg'length-1;
            sh_state   <= data_io;
          else
            sh_counter <= sh_counter - 1;
          end if;

        when data_io =>
            if (sh_counter = 0) then
                sh_counter <= shift_reg'length-data_reg'length-1; --total length minus data bytes;
                shifting   <= '0';
		        ncs_int    <= '1';
                if (read_n_write = '1') then
                    sh_state <= data_valid; -- read
                else
                    sh_state <= data_wait; -- write
                end if;
            else
                sh_counter <= sh_counter - 1;
            end if;

        when data_valid =>  -- read
            sh_state <= idle;

        when data_wait =>  -- write
            sh_state <= idle;

       -- when update =>
       --     shifting   <= '0';
       --     ncs_int_r  <= '1';
       --     sh_state <= data_valid;

      --  when update_instruct =>
       --   if (sh_counter = 0) then
       --     sh_counter <= 32;
       --     sh_state   <= update_data_io;
     --     else
      --      sh_counter <= sh_counter - 1;
      --    end if;

       -- when update_data_io =>
      --    if (sh_counter = 0) then
       --     sh_counter <= shift_reg'length-32-1; --total length minus one data reg
       --     ncs_int    <= '1';
       --     sh_state <= idle;
       --   else
      --      sh_counter <= sh_counter - 1;
       --   end if;

        when others =>
          sh_state <= idle;

      end case;

    end if;
  end process;

  busy <= '0' when (sh_state = idle) else '1';


  ----------------------------------------------------------------------------------------------------
  -- Instruction & data shift register
  ----------------------------------------------------------------------------------------------------

  process (rst, serial_clk)
  begin
    if (rst = '1') then
        shift_reg      <= (others => '0');
        read_byte_val  <= '0';
	    data_read      <= (others => '0');

    elsif (rising_edge(serial_clk)) then

        if (inst_reg_val = '1' and read_n_write = '0') then     -- write
            shift_reg <= inst_rw & "00" & inst_reg & data_reg;
		elsif (inst_reg_val = '1' and read_n_write = '1') then  -- read
            shift_reg <= inst_rw & "00" & inst_reg & data_reg;
        end if;

	    if (shifting = '1') then
            shift_reg <= shift_reg(shift_reg'length-2 downto 0) & trig_sdi_in;
        end if;

		-- Data read from device
        if (sh_state = data_valid) then
            read_byte_val <= '1';
            data_read     <= shift_reg(7 downto 0);
        else
            read_byte_val <= '0';
            data_read     <= data_read;
        end if;

    end if;
  end process;

  -- Transfer data valid pulse to other clock domain
pulse2pulse_inst1 : pulse2pulse
port map
(
  rst      => rst,
  in_clk   => serial_clk,
  out_clk  => clk_cmd, -- LM clk
  pulsein  => read_byte_val,
  pulseout => data_read_val,
  inbusy   => open
);


  -- Intruction pulse
  pulse2pulse_inst0 : pulse2pulse
  port map
  (
    rst      => rst,
    in_clk   => clk_cmd, --LM clk
    out_clk  => serial_clk,
    pulsein  => inst_val,
    pulseout => inst_reg_val,
    inbusy   => open
  );

----------------------------------------------------------------------------------------------------
-- Capture data in on rising edge SCLK
-- therefore freeze the signal on the falling edge of serial clock.
----------------------------------------------------------------------------------------------------
process (serial_clk)
begin
  if (falling_edge(serial_clk)) then
    trig_sdi_in <= trig_clksel0;
  end if;
end process;

--------------------------------------------------------------------------------
-- Outputs
--------------------------------------------------------------------------------
    --spi_io_t  <= '1' when (sh_state = data_io and read_n_write = '1') else '0'; -- 0 = output, 1 = input
    trig_sdo <= 'Z' when (sh_state = data_io and read_n_write = '1') else shift_reg(shift_reg'length - 1);--shift_reg(shift_reg'length - 1) when ncs_int = '0' else 'Z';
    trig_n_cs <= ncs_int;
    trig_sclk <= not sclk_ext when ncs_int = '0' else '0';
--  ncs_trig <= ncs_int when read_n_write = '0' else ncs_int_w;

--------------------------------------------------------------------------------
-- Output buffer
--------------------------------------------------------------------------------

--iobuf_trig : iobuf
--port map (
--  I  => data_write_val,
--  O  => trig_sdi,
--  IO => trig_sdo,
--  T  => ncs_trig
--);

  ----------------------------------------------------------------------------------------------------
  -- End
  ----------------------------------------------------------------------------------------------------
  end Behavioural;

