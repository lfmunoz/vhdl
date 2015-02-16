
-------------------------------------------------------------------------------------
-- FILE NAME : 
--
-- AUTHOR    : Luis F Munoz
--
-- COMPANY   : 4DSP
--
-- ITEM      : 1
--
-- UNITS     : Entity       - 
--             architecture - 
--
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- Conversion between a AXI-Stream Slave to a StellarIP wormhole input. Use when 
-- there is  StellarIP Block that has a WH_IN interface but we really want a AXI-Stream Slave 
-- interface. For example a DAC.
--
-- AXI-Stream Master -> AXI-Stream Slave to WH_OUT (this entity) -> WH_IN
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
entity axistream_to_whin is
port (
   -- global
   clk                                     : in std_logic;
   rst                                     : in std_logic; 

   --Wormhole 'data_in' of type 'axis_32b_in':
   data_in_tdata                           : in    std_logic_vector(63 downto 0);
   data_in_tkeep                           : out   std_logic_vector(3 downto 0);
   data_in_tlast                           : in    std_logic;
   data_in_tready                          : out   std_logic;
   data_in_tstrb                           : out   std_logic;
   data_in_tuser                           : in    std_logic_vector(31 downto 0);
   data_in_tvalid                          : in    std_logic;

   --Wormhole 'data_out' of type 'wh_out':
   data_out_out_stop                       : in    std_logic;
   data_out_out_dval                       : out   std_logic;
   data_out_out_data                       : out   std_logic_vector(63 downto 0)

   );
end entity axistream_to_whin;

-------------------------------------------------------------------------------------
--Architecture declaration
-------------------------------------------------------------------------------------
architecture behavioural   of axistream_to_whin  is

--***********************************************************************************
begin
--***********************************************************************************

-- AXI-Stream Standard says these should be HIGH when not used.
data_in_tstrb   <= '1';
data_in_tkeep   <= (others => '1');

process(clk, rst)
begin
    if rising_edge(clk) then
      data_out_out_data     <= data_in_tdata;
      data_out_out_dval     <= data_in_tvalid;
      data_in_tready        <=  not data_out_out_stop;
    end if;
end process;

--***********************************************************************************
end architecture behavioural;
--***********************************************************************************
