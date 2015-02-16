
-------------------------------------------------------------------------------------
-- FILE NAME : sip_clkrst_xx720.vhd
--
-- AUTHOR    : StellarIP (c) 4DSP
--
-- COMPANY   : 4DSP
--
-- ITEM      : 1
--
-- UNITS     : Entity       - sip_clkrst_xx720
--             architecture - arch_sip_clkrst_xx720
--
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- sip_clkrst_xx720
-- Notes: sip_clkrst_xx720
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
entity sip_clkrst_xx720  is
port (
--Wormhole 'cmdclk_in' of type 'cmdclk_in':
   cmdclk_in_cmdclk                        : in    std_logic;

--Wormhole 'cmd_in' of type 'cmd_in':
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;

--Wormhole 'cmd_out' of type 'cmd_out':
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;

--Wormhole 'clkout' of type 'clkout':
   clkout_clkout                           : out   std_logic_vector(31 downto 0);

--Wormhole 'ext_clkrst_sfmc720' of type 'ext_clkrst_sfmc720':
   clk200_n                                : in    std_logic;
   clk200_p                                : in    std_logic;
   fpga_emcclk                             : in    std_logic;

--Wormhole 'rst_out' of type 'rst_out':
   rst_out_rstout                          : out   std_logic_vector(31 downto 0);

--Wormhole 'ifpga_rst_in' of type 'ifpga_rst_in':
   ifpga_rst_in_ifpga_rst                  : in    std_logic
   );
end entity sip_clkrst_xx720;

-------------------------------------------------------------------------------------
--Architecture declaration
-------------------------------------------------------------------------------------
architecture arch_sip_clkrst_xx720   of sip_clkrst_xx720  is

-------------------------------------------------------------------------------------
--Constants declaration
-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
--Signal declaration
-------------------------------------------------------------------------------------
signal clk200M_o :std_logic;

-------------------------------------------------------------------------------------
--components declarations
-------------------------------------------------------------------------------------

component clkrst_xx720  is
generic ( reset_base :integer:=1024);
port
(

   clk200_n	              : in    std_logic;
   clk200_p	              : in    std_logic;
   fpga_emcclk            : in    std_logic;
   reset_i                       :in std_logic; --reset complete FPGA

   --command if
   out_cmd                       :out std_logic_vector(63 downto 0);
   out_cmd_val                   :out std_logic;
   in_cmd                        :in  std_logic_vector(63 downto 0);
   in_cmd_val                    :in  std_logic;
	cmdclk_in						   :in  std_logic;
   --clk outputs
   clk200M_o                      :out std_logic;
   dly_ready_o                    :out std_logic;

   clk_ddr_0_div2o                :out std_logic;
   clk_ddr_0o                     :out std_logic;
   clk_ddr_90o                    :out std_logic;
   clk_ddr_180o                   :out std_logic;
   clk_ddr_270o                   :out std_logic;

   fpga_emcclko                   :out std_logic;

   --reset outputs
   reset1_o                       :out std_logic;
   reset2_o                       :out std_logic;
   reset3_o                       :out std_logic

   );
end component;


begin


-------------------------------------------------------------------------------------
--components instantiations
-------------------------------------------------------------------------------------
i_clkrst_xx720:clkrst_xx720
generic map( reset_base =>2)
port map
(

   clk200_n	           =>clk200_n,
   clk200_p	           =>clk200_p,
   fpga_emcclk         =>fpga_emcclk,

   reset_i                =>ifpga_rst_in_ifpga_rst,

   --command if
   out_cmd                       =>cmd_out_cmdout,
   out_cmd_val                   =>cmd_out_cmdout_val,
   in_cmd                        =>cmd_in_cmdin,
   in_cmd_val                    =>cmd_in_cmdin_val,
	cmdclk_in						   =>cmdclk_in_cmdclk,

   --clk outputs
   clk200M_o                      =>clk200M_o,
   dly_ready_o                    =>open,

   clk_ddr_0_div2o                =>clkout_clkout(9),
   clk_ddr_0o                     =>clkout_clkout(5),
   clk_ddr_90o                    =>clkout_clkout(6),
   clk_ddr_180o                   =>clkout_clkout(7),
   clk_ddr_270o                   =>clkout_clkout(8),

   fpga_emcclko                   =>clkout_clkout(12),

   --reset outputs
   reset1_o                       =>rst_out_rstout(0),
   reset2_o                       =>rst_out_rstout(1),
   reset3_o                       =>rst_out_rstout(2)

   );
clkout_clkout(10) <=clk200M_o;
clkout_clkout(11) <=clk200M_o; --clock is used for the command clock
-------------------------------------------------------------------------------------
--synchronous processes
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
--asynchronous processes
-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------
--asynchronous mapping
-------------------------------------------------------------------------------------
rst_out_rstout(31 downto 18) <= (others=>'0');
rst_out_rstout(15 downto 3) <= (others=>'0');
end architecture arch_sip_clkrst_xx720   ; -- of sip_clkrst_xx720
