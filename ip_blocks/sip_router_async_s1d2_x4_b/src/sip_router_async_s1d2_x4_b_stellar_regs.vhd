--------------------------------------------------------------------------------
-- file name : sip_router_async_s1d2_x4_b_regs.vhd
--
-- author    : e. barhorst
--
-- company   : 4dsp
--
-- item      : number
--
-- units     : entity       -sip_router_async_s1d2_x4_b_regs
--             arch_itecture - arch_sip_router_async_s1d2_x4_b_regs
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
-- 0.0    0        19-01-2009        new version
--
----------------------------------------------
--
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- specify libraries.
--------------------------------------------------------------------------------

library  ieee ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_misc.all ;
use ieee.std_logic_arith.all ;
use ieee.std_logic_1164.all ;

--------------------------------------------------------------------------------
-- entity declaration
--------------------------------------------------------------------------------
entity sip_router_async_s1d2_x4_b_regs  is
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
end entity sip_router_async_s1d2_x4_b_regs  ;

--------------------------------------------------------------------------------
-- arch_itecture declaration
--------------------------------------------------------------------------------
architecture arch_sip_router_async_s1d2_x4_b_regs   of sip_router_async_s1d2_x4_b_regs  is

-----------------------------------------------------------------------------------
--constant declarations
-----------------------------------------------------------------------------------
--register addresses
constant addr_mbx_in           :std_logic_vector(27 downto 0) :=x"0000000"; --register address for the lsb of the start addr
constant addr_mbx_out          :std_logic_vector(27 downto 0) :=x"0000001"; --register address for the lsb of the start addr

--ctrl


type std2d_32b is array(natural range<>) of std_logic_vector(31 downto 0);
constant nb_regs             :integer := 2;



-----------------------------------------------------------------------------------
--signal declarations
-----------------------------------------------------------------------------------
signal registers                         :std2d_32b(nb_regs-1 downto 0);
signal out_reg                           :std_logic_vector(31 downto 0);
signal out_reg_val                       :std_logic;
signal out_reg_addr                      :std_logic_vector(27 downto 0);
signal in_reg                            :std_logic_vector(31 downto 0);
signal in_reg_val                        :std_logic;
signal in_reg_req                        :std_logic;
signal in_reg_addr                       :std_logic_vector(27 downto 0);

signal local_reset : std_logic_vector(2 downto 0);

signal out_mailbox_data_sig               :std_logic_vector(31 downto 0);
-----------------------------------------------------------------------------------
--component declarations
-----------------------------------------------------------------------------------
component sip_router_async_s1d2_x4_b_stellar_cmd
generic
(
   start_addr                    :std_logic_vector(27 downto 0):=x"0000000";
   stop_addr                     :std_logic_vector(27 downto 0):=x"0000010"
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
   clk_reg                       :in  std_logic;                    --register interface is synchronous to this clock
   out_reg                       :out std_logic_vector(31 downto 0);--caries the out register data
   out_reg_val                   :out std_logic;                    --the out_reg has valid data  (pulse)
   out_reg_addr                  :out std_logic_vector(27 downto 0);--out register address
   in_reg                        :in  std_logic_vector(31 downto 0);--requested register data is placed on this bus
   in_reg_val                    :in  std_logic;                    --pulse to indicate requested register is valid
   in_reg_req                    :out std_logic;                    --pulse to request data
   in_reg_addr                   :out std_logic_vector(27 downto 0); --requested address
   --mailbox interface
   mbx_out_reg                    :out std_logic_vector(31 downto 0);--value of the mailbox to send
   mbx_out_val                    :out std_logic;
   mbx_in_reg                    :in  std_logic_vector(31 downto 0);--value of the mailbox to send
   mbx_in_val                    :in  std_logic
   );
end component;
component  pulse2pulse
port (
   in_clk      :in std_logic;
   out_clk     :in std_logic;
   rst         :in std_logic;
   pulsein     :in std_logic;
   inbusy      :out std_logic;
   pulseout    :out std_logic
   );
end component;
begin

-----------------------------------------------------------------------------------
--component instantiations
-----------------------------------------------------------------------------------

i_sip_router_async_s1d2_x4_b_stellar_cmd: sip_router_async_s1d2_x4_b_stellar_cmd
generic map
(
   start_addr                    =>start_addr,
   stop_addr                     =>stop_addr
   )
port map
(
   reset                         =>reset,
   --command if
   clk_cmd                       =>clk_cmd,
   out_cmd                       =>out_cmd,
   out_cmd_val                   =>out_cmd_val,
   in_cmd                        =>in_cmd,
   in_cmd_val                    =>in_cmd_val,

   --register interface
   clk_reg                       =>clk_reg,
   out_reg                       =>out_reg,
   out_reg_val                   =>out_reg_val,
   out_reg_addr                  =>out_reg_addr,
   in_reg                        =>in_reg,
   in_reg_val                    =>in_reg_val,
   in_reg_req                    =>in_reg_req,
   in_reg_addr                   =>in_reg_addr,
   mbx_out_reg                   =>out_mailbox_data_sig,
   mbx_out_val                   =>open,
   mbx_in_reg                    =>(others=>'0'),
   mbx_in_val                    =>'0'
   );
-----------------------------------------------------------------------------------
--synchronous processes
-----------------------------------------------------------------------------------


in_reg_proc: process(clk_reg)
begin

    -- Local reset
    if reset = '1' then
      local_reset <= (others => '1');
    elsif rising_edge(clk_reg) then
      local_reset <= local_reset(1 downto 0) & '0';
    end if;

   if(clk_reg'event and clk_reg='1') then
     if local_reset(2) = '1' then
      for i in 0 to nb_regs-1 loop
            registers(i) <= (others => '0');
      end loop;
     else

      for i in 0 to nb_regs-1 loop
         if (out_reg_val = '1' and out_reg_addr = i) then
            registers(i) <= out_reg;
         end if;
      end loop;

      --acknoledge the requested register
      in_reg_val <= in_reg_req;
     end if;
   end if;
end process;



-----------------------------------------------------------------------------------
--asynchronous processes
-----------------------------------------------------------------------------------


-----------------------------------------------------------------------------------
--asynchronous mapping
-----------------------------------------------------------------------------------
--map the requested register register
in_reg <= registers(conv_integer(in_reg_addr));


reg0000     <=registers(conv_integer(0));
reg0001     <=registers(conv_integer(1));


end architecture arch_sip_router_async_s1d2_x4_b_regs   ; -- of sip_router_async_s1d2_x4_b_regs

