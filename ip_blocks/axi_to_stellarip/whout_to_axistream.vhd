
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
-- Conversion between a standard StellarIP wormhole output to an AXI-Stream Master. Use
-- with StellarIP Block that has a WH_OUT interface but we really want AXI-Stream Master.
-- For example an ADC.
--
-- AXI-Stream Slave <- AXI-Stream Master to WH_IN (this entity) <- WH_OUT
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
entity whout_to_axistream  is
port (
   -- global
   clk                                     : in    std_logic;
   rst                                     : in   std_logic; 

   --Wormhole 'data_in' of type 'wh_in':
   data_in_in_stop                         : out   std_logic;
   data_in_in_dval                         : in    std_logic;
   data_in_in_data                         : in    std_logic_vector(63 downto 0);

   --Wormhole 'data_out' of type 'axis_32b_out':
   data_out_tdata                          : out   std_logic_vector(63 downto 0);
   data_out_tkeep                          : in    std_logic_vector(3 downto 0);
   data_out_tlast                          : out   std_logic;
   data_out_tready                         : in    std_logic;
   data_out_tstrb                          : in    std_logic;
   data_out_tuser                          : out   std_logic_vector(31 downto 0);
   data_out_tvalid                         : out   std_logic
   );
end entity whout_to_axistream;

-------------------------------------------------------------------------------------
--Architecture declaration
-------------------------------------------------------------------------------------
architecture behavioural of whout_to_axistream  is

--***********************************************************************************
begin
--***********************************************************************************


inst0_fifo: 
entity work.axis2wh_fifo
  port map (
    rst 		=> rst,
    wr_clk 		=> clk,
    rd_clk 		=> clk,
    din 		=> data_in_in_data,
    wr_en 		=> data_in_in_dval,
    rd_en 		=> data_out_tready,
    dout		=> data_out_tdata,
    full 		=> open,
    almost_full => data_in_in_stop,
    empty 		=> open,
    valid 		=> data_out_tvalid
  );


--process(clk, rst)
--begin
--    if rising_edge(clk) then
--      data_out_tdata   <= data_in_in_data;
--      data_out_tvalid  <= data_in_in_dval;
--      data_in_in_stop  <= not data_out_tready;
--    end if;
--end process;

data_out_tuser <= (others=>'0');
data_out_tlast <= '1'; -- This indicates that all transfers are individual packets

--**********************************************************************************
end architecture behavioural; 
--**********************************************************************************
