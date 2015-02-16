
-------------------------------------------------------------------------------------
-- FILE NAME : sip_router_async_s1d2_x4_b.vhd
--
-- AUTHOR    : StellarIP (c) 4DSP
--
-- COMPANY   : 4DSP
--
-- ITEM      : 1
--
-- UNITS     : Entity       - sip_router_async_s1d2_x4_b
--             architecture - arch_sip_router_async_s1d2_x4_b
--
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- sip_router_async_s1d2_x4_b
-- Notes: sip_router_async_s1d2_x4_b
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
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
--library declaration
-------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_arith.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_misc.all ;

-------------------------------------------------------------------------------------
--Entity Declaration
-------------------------------------------------------------------------------------
entity sip_router_async_s1d2_x4_b  is
generic (
   global_start_addr_gen                   : std_logic_vector(27 downto 0);
   global_stop_addr_gen                    : std_logic_vector(27 downto 0);
   private_start_addr_gen                  : std_logic_vector(27 downto 0);
   private_stop_addr_gen                   : std_logic_vector(27 downto 0)
);
port (
--Wormhole 'cmdclk_in' of type 'cmdclk_in':
   cmdclk_in_cmdclk                        : in    std_logic;

--Wormhole 'cmd_in' of type 'cmd_in':
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;

--Wormhole 'cmd_out' of type 'cmd_out':
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;

--Wormhole 'clk' of type 'clkin':
   clk_clkin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'rst' of type 'rst_in':
   rst_rstin                               : in    std_logic_vector(31 downto 0);

--Wormhole 'in0' of type 'wh_in':
   in0_in_stop                             : out   std_logic;
   in0_in_dval                             : in    std_logic;
   in0_in_data                             : in    std_logic_vector(63 downto 0);

--Wormhole 'in1' of type 'wh_in':
   in1_in_stop                             : out   std_logic;
   in1_in_dval                             : in    std_logic;
   in1_in_data                             : in    std_logic_vector(63 downto 0);

--Wormhole 'in2' of type 'wh_in':
   in2_in_stop                             : out   std_logic;
   in2_in_dval                             : in    std_logic;
   in2_in_data                             : in    std_logic_vector(63 downto 0);

--Wormhole 'in3' of type 'wh_in':
   in3_in_stop                             : out   std_logic;
   in3_in_dval                             : in    std_logic;
   in3_in_data                             : in    std_logic_vector(63 downto 0);

--Wormhole 'out0_0' of type 'wh_out':
   out0_0_out_stop                         : in    std_logic;
   out0_0_out_dval                         : out   std_logic;
   out0_0_out_data                         : out   std_logic_vector(63 downto 0);

--Wormhole 'out1_0' of type 'wh_out':
   out1_0_out_stop                         : in    std_logic;
   out1_0_out_dval                         : out   std_logic;
   out1_0_out_data                         : out   std_logic_vector(63 downto 0);

--Wormhole 'out2_0' of type 'wh_out':
   out2_0_out_stop                         : in    std_logic;
   out2_0_out_dval                         : out   std_logic;
   out2_0_out_data                         : out   std_logic_vector(63 downto 0);

--Wormhole 'out3_0' of type 'wh_out':
   out3_0_out_stop                         : in    std_logic;
   out3_0_out_dval                         : out   std_logic;
   out3_0_out_data                         : out   std_logic_vector(63 downto 0);

--Wormhole 'out0_1' of type 'wh_out':
   out0_1_out_stop                         : in    std_logic;
   out0_1_out_dval                         : out   std_logic;
   out0_1_out_data                         : out   std_logic_vector(63 downto 0);

--Wormhole 'out1_1' of type 'wh_out':
   out1_1_out_stop                         : in    std_logic;
   out1_1_out_dval                         : out   std_logic;
   out1_1_out_data                         : out   std_logic_vector(63 downto 0);

--Wormhole 'out2_1' of type 'wh_out':
   out2_1_out_stop                         : in    std_logic;
   out2_1_out_dval                         : out   std_logic;
   out2_1_out_data                         : out   std_logic_vector(63 downto 0);

--Wormhole 'out3_1' of type 'wh_out':
   out3_1_out_stop                         : in    std_logic;
   out3_1_out_dval                         : out   std_logic;
   out3_1_out_data                         : out   std_logic_vector(63 downto 0)
   );
end entity sip_router_async_s1d2_x4_b;

-------------------------------------------------------------------------------------
--Architecture declaration
-------------------------------------------------------------------------------------
architecture arch_sip_router_async_s1d2_x4_b   of sip_router_async_s1d2_x4_b  is

-------------------------------------------------------------------------------------
--Constants declaration
-------------------------------------------------------------------------------------


  constant CLK_INDEX_S0 : natural := 13;
  constant CLK_INDEX_D0 : natural := 13;
  constant CLK_INDEX_D1 : natural := 14;
  constant DATA_WIDTH : natural := 64;

-------------------------------------------------------------------------------------
--Components Declaration
-------------------------------------------------------------------------------------

component sip_router_async_s1d2_x4_b_regs
generic
(
   start_addr                    :std_logic_vector(27 downto 0):=x"0000000";
   stop_addr                     :std_logic_vector(27 downto 0):=x"0000001"
   );

port
   (
      reset                         :in std_logic;
      --command if
      clk_cmd                       :in  std_logic; --cmd_in and cmd_out are synchronous to this clock;
      out_cmd                       :out std_logic_vector(63 downto 0);
      out_cmd_val                   :out std_logic;
      in_cmd                        :in  std_logic_vector(63 downto 0);
      in_cmd_val                    :in  std_logic;

      --register interface
      clk_reg                       :in  std_logic;
      reg0000                  	    :out std_logic_vector(31 downto 0);
      reg0001                  	    :out std_logic_vector(31 downto 0)

   );
end component;

  COMPONENT fifo_async_fwft_64x513_v8_2
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    valid : OUT STD_LOGIC;
    rd_data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    wr_data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
  END COMPONENT;

-------------------------------------------------------------------------------------
--Signal declaration
-------------------------------------------------------------------------------------

  type std_lv_10 is array (natural range <>) of std_logic_vector(9 downto 0);
  type std_lv_DATA_WIDTH is array (natural range <>) of std_logic_vector((DATA_WIDTH - 1) downto 0);

  signal control_0 : std_logic_vector(31 downto 0);
  signal d0_control_0_cc : std_logic_vector(31 downto 0);
  signal d0_control_0 : std_logic_vector(31 downto 0);
  signal d1_control_0_cc : std_logic_vector(31 downto 0);
  signal d1_control_0 : std_logic_vector(31 downto 0);

  signal s0_reset : std_logic_vector(2 downto 0);
  signal d0_reset : std_logic_vector(2 downto 0);
  signal d1_reset : std_logic_vector(2 downto 0);

  signal wh_in_stop : std_logic_vector(0 to 3);
  signal wh_in_dval : std_logic_vector(0 to 3);
  signal wh_in_data : std_lv_DATA_WIDTH(0 to 3);

  signal wh_out_0_stop : std_logic_vector(0 to 3);
  signal wh_out_0_dval : std_logic_vector(0 to 3);
  signal wh_out_0_data : std_lv_DATA_WIDTH(0 to 3);

  signal wh_out_1_stop : std_logic_vector(0 to 3);
  signal wh_out_1_dval : std_logic_vector(0 to 3);
  signal wh_out_1_data : std_lv_DATA_WIDTH(0 to 3);

  signal fifo_d0_wr_en : std_logic_vector(0 to 3);
  signal fifo_d0_rd_en : std_logic_vector(0 to 3);
  signal fifo_d0_dout : std_lv_DATA_WIDTH(0 to 3);
  signal fifo_d0_valid : std_logic_vector(0 to 3);
  signal fifo_d0_wr_data_count : std_lv_10(0 to 3);

  signal fifo_d1_wr_en : std_logic_vector(0 to 3);
  signal fifo_d1_rd_en : std_logic_vector(0 to 3);
  signal fifo_d1_dout : std_lv_DATA_WIDTH(0 to 3);
  signal fifo_d1_valid : std_logic_vector(0 to 3);
  signal fifo_d1_wr_data_count : std_lv_10(0 to 3);

begin


-----------------------------------------------------------------------------------
--component instantiations
-----------------------------------------------------------------------------------
i_sip_router_async_s1d2_x4_b_regs:sip_router_async_s1d2_x4_b_regs
generic map
(
      start_addr                   =>private_start_addr_gen,
      stop_addr                    =>private_stop_addr_gen
)
port map
(
      reset                         =>rst_rstin(2),
      clk_cmd                       =>cmdclk_in_cmdclk,
      out_cmd                       =>cmd_out_cmdout,
      out_cmd_val                   =>cmd_out_cmdout_val,
      in_cmd                        =>cmd_in_cmdin,
      in_cmd_val                    =>cmd_in_cmdin_val,
      clk_reg                       =>clk_clkin(CLK_INDEX_S0),
      reg0000     =>open, --control_0,
      reg0001	  =>open

);

control_0 <= x"00000001";

  -----------------------------------------------------
  -- Source 0
  -----------------------------------------------------
  process(rst_rstin(2), clk_clkin(CLK_INDEX_S0))
  begin
    -- Local reset
    if rst_rstin(2) = '1' then
      s0_reset <= (others => '1');
    elsif rising_edge(clk_clkin(CLK_INDEX_S0)) then
      s0_reset <= s0_reset(1 downto 0) & '0';
    end if;
  end process;

  process(clk_clkin(CLK_INDEX_S0))
  begin
    if rising_edge(clk_clkin(CLK_INDEX_S0)) then
      if s0_reset(2) = '1' then
        wh_in_stop <= (others => '1');
        wh_in_dval <= (others => '0');
        fifo_d0_wr_en <= "0000";
        fifo_d1_wr_en <= "0000";
      else

        -- Register inputs
        fifo_d0_wr_en(0) <= in0_in_dval and (not control_0(0));
        fifo_d0_wr_en(1) <= in1_in_dval and (not control_0(0));
        fifo_d0_wr_en(2) <= in2_in_dval and (not control_0(0));
        fifo_d0_wr_en(3) <= in3_in_dval and (not control_0(0));

        fifo_d1_wr_en(0) <= in0_in_dval and (    control_0(0));
        fifo_d1_wr_en(1) <= in1_in_dval and (    control_0(0));
        fifo_d1_wr_en(2) <= in2_in_dval and (    control_0(0));
        fifo_d1_wr_en(3) <= in3_in_dval and (    control_0(0));

        wh_in_data(0) <= in0_in_data;
        wh_in_data(1) <= in1_in_data;
        wh_in_data(2) <= in2_in_data;
        wh_in_data(3) <= in3_in_data;

        -- Register outputs
        for i in 0 to 3 loop
          if control_0(0) = '0' then
            wh_in_stop(i) <= and_reduce(fifo_d0_wr_data_count(i)(8 downto 7));
          else
            wh_in_stop(i) <= and_reduce(fifo_d1_wr_data_count(i)(8 downto 7));
          end if;
        end loop;

      end if;
    end if;
  end process;

  in0_in_stop <= wh_in_stop(0);
  in1_in_stop <= wh_in_stop(1);
  in2_in_stop <= wh_in_stop(2);
  in3_in_stop <= wh_in_stop(3);


gen_fifos:
for i in 0 to 3 generate

  -- If the source and destinantion clock domains are the same then
  -- the fifo could probably be replaced with a register
  -- if CLK_INDEX_S0 = CLK_INDEX_D0 generate ....

  fifo_d0:
  fifo_async_fwft_64x513_v8_2
  PORT MAP (
    rst => rst_rstin(2),
    wr_clk => clk_clkin(CLK_INDEX_S0),
    rd_clk => clk_clkin(CLK_INDEX_D0),
    din => wh_in_data(i),
    wr_en => fifo_d0_wr_en(i),
    rd_en => fifo_d0_rd_en(i),
    dout => fifo_d0_dout(i),
    full => open,
    empty => open,
    valid => fifo_d0_valid(i),
    rd_data_count => open,
    wr_data_count => fifo_d0_wr_data_count(i)
  );

  fifo_d1:
  fifo_async_fwft_64x513_v8_2
  PORT MAP (
    rst => rst_rstin(2),
    wr_clk => clk_clkin(CLK_INDEX_S0),
    rd_clk => clk_clkin(CLK_INDEX_D1),
    din => wh_in_data(i),
    wr_en => fifo_d1_wr_en(i),
    rd_en => fifo_d1_rd_en(i),
    dout => fifo_d1_dout(i),
    full => open,
    empty => open,
    valid => fifo_d1_valid(i),
    rd_data_count => open,
    wr_data_count => fifo_d1_wr_data_count(i)
  );

  fifo_d0_rd_en(i) <= (not wh_out_0_stop(i)) and (not d0_control_0(0)) and fifo_d0_valid(i);
  fifo_d1_rd_en(i) <= (not wh_out_1_stop(i)) and (    d1_control_0(0)) and fifo_d1_valid(i);

end generate;


  -----------------------------------------------------
  -- Destination 0
  -----------------------------------------------------
  process(rst_rstin(2), clk_clkin(CLK_INDEX_D0))
  begin
    -- Local reset
    if rst_rstin(2) = '1' then
      d0_reset <= (others => '1');
    elsif rising_edge(clk_clkin(CLK_INDEX_D0)) then
      d0_reset <= d0_reset(1 downto 0) & '0';
    end if;
  end process;

  process(clk_clkin(CLK_INDEX_D0))
  begin
    if rising_edge(clk_clkin(CLK_INDEX_D0)) then
      -- Cross clock
      d0_control_0_cc <= control_0;
      d0_control_0 <= d0_control_0_cc;

      if d0_reset(2) = '1' then
        wh_out_0_stop <= (others => '1');
        wh_out_0_dval <= (others => '0');
      else

        -- Register inputs
        wh_out_0_stop(0) <= out0_0_out_stop;
        wh_out_0_stop(1) <= out1_0_out_stop;
        wh_out_0_stop(2) <= out2_0_out_stop;
        wh_out_0_stop(3) <= out3_0_out_stop;

        for i in 0 to 3 loop
          wh_out_0_dval(i) <= fifo_d0_rd_en(i); --fifo_d0_valid(i);
          wh_out_0_data(i) <= fifo_d0_dout(i);
        end loop;

      end if;
    end if;
  end process;

  out0_0_out_dval <= wh_out_0_dval(0);
  out1_0_out_dval <= wh_out_0_dval(1);
  out2_0_out_dval <= wh_out_0_dval(2);
  out3_0_out_dval <= wh_out_0_dval(3);

  out0_0_out_data <= wh_out_0_data(0);
  out1_0_out_data <= wh_out_0_data(1);
  out2_0_out_data <= wh_out_0_data(2);
  out3_0_out_data <= wh_out_0_data(3);


  -----------------------------------------------------
  -- Destination 1
  -----------------------------------------------------
  process(rst_rstin(2), clk_clkin(CLK_INDEX_D1))
  begin
    -- Local reset
    if rst_rstin(2) = '1' then
      d1_reset <= (others => '1');
    elsif rising_edge(clk_clkin(CLK_INDEX_D1)) then
      d1_reset <= d1_reset(1 downto 0) & '0';
    end if;
  end process;

  process(clk_clkin(CLK_INDEX_D1))
  begin
    if rising_edge(clk_clkin(CLK_INDEX_D1)) then
      -- Cross clock
      d1_control_0_cc <= control_0;
      d1_control_0 <=  d1_control_0_cc;

      if d1_reset(2) = '1' then
        wh_out_1_stop <= (others => '1');
        wh_out_1_dval <= (others => '0');
      else

        -- Register inputs
        wh_out_1_stop(0) <= out0_1_out_stop;
        wh_out_1_stop(1) <= out1_1_out_stop;
        wh_out_1_stop(2) <= out2_1_out_stop;
        wh_out_1_stop(3) <= out3_1_out_stop;

        for i in 0 to 3 loop
          wh_out_1_dval(i) <= fifo_d1_rd_en(i); --fifo_d1_valid(i);
          wh_out_1_data(i) <= fifo_d1_dout(i);
        end loop;

      end if;
    end if;
  end process;

  out0_1_out_dval <= wh_out_1_dval(0);
  out1_1_out_dval <= wh_out_1_dval(1);
  out2_1_out_dval <= wh_out_1_dval(2);
  out3_1_out_dval <= wh_out_1_dval(3);

  out0_1_out_data <= wh_out_1_data(0);
  out1_1_out_data <= wh_out_1_data(1);
  out2_1_out_data <= wh_out_1_data(2);
  out3_1_out_data <= wh_out_1_data(3);

end architecture arch_sip_router_async_s1d2_x4_b   ; -- of sip_router_async_s1d2_x4_b
