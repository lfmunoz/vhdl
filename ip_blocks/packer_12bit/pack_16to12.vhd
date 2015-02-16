--------------------------------------------------------------------------------
-- file name : pack_16to12.vhd
--
-- author    : e. barhorst
--
-- company   : 4dsp
--
-- item      : number
--
-- units     : entity       -pack_16to12
--             arch_itecture - arch_pack_16to12
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
-- 0.0    0        19-11-2008        new version

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
use ieee.math_real.all;
use ieee.std_logic_1164.all;

entity pack_16to12 is
port (
  clk           : in  std_logic;
  rst           : in  std_logic;

  enable        : in  std_logic;

  data_in_dval  : in  std_logic;
  data_in       : in  std_logic_vector(63 downto 0);
  data_in_stop  : out std_logic;

  data_out_dval : out std_logic;
  data_out      : out std_logic_vector(63 downto 0);
  data_out_stop : in std_logic
);
end pack_16to12;

architecture pack_16to12_syn of pack_16to12 is

-----------------------------------------------------------------------------------
-- Signal Declarations
-----------------------------------------------------------------------------------
signal cycle        : std_logic_vector(1 downto 0);
signal data_pr      : std_logic_vector(63 downto 0);
signal data_12_dval : std_logic;
signal data_12      : std_logic_vector(63 downto 0);

signal data_in0     : std_logic_vector(11 downto 0);
signal data_in1     : std_logic_vector(11 downto 0);
signal data_in2     : std_logic_vector(11 downto 0);
signal data_in3     : std_logic_vector(11 downto 0);

signal data_pr0     : std_logic_vector(11 downto 0);
signal data_pr1     : std_logic_vector(11 downto 0);
signal data_pr2     : std_logic_vector(11 downto 0);
signal data_pr3     : std_logic_vector(11 downto 0);

begin

data_in0 <= data_in(11 downto 00);
data_in1 <= data_in(27 downto 16);
data_in2 <= data_in(43 downto 32);
data_in3 <= data_in(59 downto 48);

data_pr0 <= data_pr(11 downto 00);
data_pr1 <= data_pr(27 downto 16);
data_pr2 <= data_pr(43 downto 32);
data_pr3 <= data_pr(59 downto 48);

-----------------------------------------------------------------------------------
-- Begin
-----------------------------------------------------------------------------------
process(clk)
begin
  if (rst = '1') then

    cycle         <= (others => '0');
    data_12_dval  <= '0';
    data_pr       <= (others => '0');
    data_12       <= (others => '0');
    data_out_dval <= '0';
    data_out      <= (others => '0');

  elsif (rising_edge(clk)) then

    -- When packing four input cycles goes into 3 output cycles
    -- 4cycles x 4samples x 12bit = 3cycles x 64bit
    if (data_in_dval = '1') then
      cycle <= cycle + 1;
    end if;

    -- Output data on the 2nd, 3rd, and 4th cycle
    if (data_in_dval = '1' and cycle /= 0) then
      data_12_dval <= '1';
    else
      data_12_dval <= '0';
    end if;

    -- Keep the input data for one clock cycle
    data_pr <= data_in;

    -- Generate output data on the 2nd, 3rd, and 4th cycle
    if (data_in_dval = '1') then
      case cycle is
        when "01" => data_12 <= data_in1(3 downto 0) & data_in0 & data_pr3 & data_pr2 & data_pr1 & data_pr0;
        when "10" => data_12 <= data_in2(7 downto 0) & data_in1 & data_in0 & data_pr3 & data_pr2 & data_pr1(11 downto 4);
        when "11" => data_12 <= data_in3 & data_in2 & data_in1 & data_in0 & data_pr3 & data_pr2(11 downto 8);
        when others =>
      end case;
    end if;

    -- Output Multiplexer
    if (enable = '1') then
      data_out_dval <= data_12_dval;
      data_out      <= data_12;
    else
      data_out_dval <= data_in_dval;
      data_out      <= data_in;
    end if;

  end if;
end process;

data_in_stop <= data_out_stop;

-----------------------------------------------------------------------------------
-- End
-----------------------------------------------------------------------------------
end pack_16to12_syn;