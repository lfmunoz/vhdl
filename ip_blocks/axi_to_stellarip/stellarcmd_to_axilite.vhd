-------------------------------------------------------------------------------------
-- FILE NAME : .vhd
-- AUTHOR    : Luis F. Munoz
-- COMPANY   : 4DSP
-- UNITS     : Entity       - toplevel_template
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : May 21, 2014
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- This entity converts from an AXI-Lite interface to a 4DSP StellarIP Command interface.
--  
-- A StellarIP command has the following format
-- [ Command word (4-bits) | Address  (28-bits) | Data (32-bits) ]
--
-------------------------------------------------------------------------------------
 
-------------------------------------------------------------------------------------
-- LIBRARIES
-------------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_misc.all;
    use ieee.std_logic_arith.all; 

library xil_defaultlib;  

-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity stellarcmd_to_axilite is
port (
   rst                     : in std_logic;
   -- axi-lite: global
   s_axi_aclk              : in  std_logic;
 --  s_axi_aresetn           : in  std_logic;
   -- axi-lite: write address channel
   s_axi_awaddr            : in  std_logic_vector(31 downto 0);
   s_axi_awvalid           : in  std_logic;
   s_axi_awready           : out std_logic;
   -- axi-lite: write data channel 
   s_axi_wdata             : in  std_logic_vector(31  downto 0);						
   s_axi_wstrb             : in  std_logic_vector(3  downto 0);						
   s_axi_wvalid            : in  std_logic;
   s_axi_wready            : out std_logic;
   -- axi-lite: write response channel
   s_axi_bresp             : out std_logic_vector(1 downto 0);
   s_axi_bvalid            : out std_logic;
   s_axi_bready            : in  std_logic;
   -- axi-lite: read address channel
   s_axi_araddr            : in  std_logic_vector(31  downto 0); 								
   s_axi_arvalid           : in  std_logic;
   s_axi_arready           : out std_logic;
   -- axi-lite: read channel
   s_axi_rdata             : out std_logic_vector(31 downto 0);
   s_axi_rresp             : out std_logic_vector(1 downto 0);
   s_axi_rvalid            : out std_logic;
   s_axi_rready            : in  std_logic;
   -- 4DSP StellarIP Command Interface
   cmd_clk                 : out std_logic;
   cmd_out                 : out std_logic_vector(63 downto 0); 
   cmd_out_val             : out std_logic;  
   cmd_in                  : in std_logic_vector(63 downto 0);  
   cmd_in_val              : in std_logic
);
end stellarcmd_to_axilite;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of stellarcmd_to_axilite is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
constant CMD_WR      : std_logic_vector(3 downto 0) := x"1";
constant CMD_RD      : std_logic_vector(3 downto 0) := x"2";
constant CMD_RD_ACK  : std_logic_vector(3 downto 0) := x"4";

type BUS_ACCESS_STATES is (
    SM_IDLE,
    SM_READ,
    SM_WRITE,
    SM_RESP
);
  
-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal state            : BUS_ACCESS_STATES;
--signal rst              : std_logic := '1';
signal start            : std_logic;
-- write channel
signal s_axi_bresp_i    : std_logic_vector(1 downto 0);
signal s_axi_bvalid_i   : std_logic;
-- read channel
signal s_axi_rvalid_i   : std_logic;
signal s_axi_rresp_i    : std_logic_vector(1 downto 0);
signal s_axi_rdata_i    : std_logic_vector(31 downto 0);

signal write_ack_reg    : std_logic;
signal write_ack        : std_logic;
signal read_ack_reg     : std_logic;
signal read_ack         : std_logic;
signal wr_done          : std_logic;
signal rd_done          : std_logic;

signal read_data        : std_logic_vector(31 downto 0);
signal read_valid       : std_logic;

--***********************************************************************************
begin
--***********************************************************************************
cmd_clk         <= S_AXI_ACLK;

-- start signal will be used to latch the incoming address
start   <= (S_AXI_ARVALID or (S_AXI_AWVALID and S_AXI_WVALID)) when (state = SM_IDLE) else
            '0';
        
-------------------------------------------------------------------------------
-- StellarIP Command Out Interface
------------------------------------------------------------------------------- 
process (S_AXI_ACLK) is
begin
   if rising_edge(S_AXI_ACLK) then
      if rst = '1' then
         cmd_out     <= (others=>'0');
         cmd_out_val <= '0';   
      else  
        if S_AXI_ARVALID = '1' then
            cmd_out        <= CMD_RD & s_axi_araddr(27 downto 0) & x"00000000";
        else 
            cmd_out        <= CMD_WR & S_AXI_AWADDR(27 downto 0) & S_AXI_WDATA(31 downto 0);
        end if;

         if start = '1' then
            cmd_out_val    <= '1';       
         else
            cmd_out_val    <= '0';
         end if;
         
      end if;
   end if;
end process;
  
-------------------------------------------------------------------------------
-- StellarIP Command In Interface
-------------------------------------------------------------------------------   
read_valid <= '1' when cmd_in_val = '1' and  cmd_in(63 downto 60) = CMD_RD_ACK else
              '0';

process (S_AXI_ACLK) is
begin
   if rising_edge(S_AXI_ACLK) then
      if rst = '1' then
        read_data     <= (others=>'0');
      else
        if cmd_in_val = '1' then
            read_data   <=  cmd_in(31 downto 0);
         end if;
      end if;
   end if;
end process;
  
-------------------------------------------------------------------------------
-- Write Ready 
-------------------------------------------------------------------------------  
-- Acknowledge the write 
process (S_AXI_ACLK) is
begin
   if rising_edge(S_AXI_ACLK) then
        if rst = '1' then
            write_ack_reg <= '0';  
            write_ack     <= '0';          
        else
            write_ack_reg   <= write_ack;
            write_ack       <= start and not write_ack_reg;
        end if;
   end if;
end process;
 
inst_delay_bit_wr: 
entity xil_defaultlib.delay_bit
port map (
    clk         => S_AXI_ACLK,
    rst         => rst,
    bit_in      => write_ack,
    bit_out     => wr_done
);

-- port connections
s_axi_wready    <= wr_done; -- data channel
s_axi_awready   <= wr_done; -- address channel

-------------------------------------------------------------------------------
-- Read Ready 
-------------------------------------------------------------------------------  
-- Acknowledge the read 
process (S_AXI_ACLK) is
begin
   if rising_edge(S_AXI_ACLK) then
        if rst = '1' then
            read_ack_reg <= '0';  
            read_ack     <= '0';          
        else
            read_ack_reg   <= read_ack;
            read_ack       <= read_valid and not read_ack_reg;
        end if;
   end if;
end process;

inst_delay_bit_rd:
entity xil_defaultlib.delay_bit
port map (
    clk         => S_AXI_ACLK,
    rst         => rst,
    bit_in      => read_ack,
    bit_out     => rd_done
);

-- port connections
s_axi_arready   <= rd_done; -- address channel

-------------------------------------------------------------------------------
-- AXI Transaction Controller
-------------------------------------------------------------------------------
process (S_AXI_ACLK) is
begin
   if rising_edge(S_AXI_ACLK) then
      if rst = '1' then
         state <= SM_IDLE;
      else
         case state is
            when SM_IDLE => 
               
               if (S_AXI_ARVALID = '1') then                            -- read precedence over write
                  state <= SM_READ;
               elsif (S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
                  state <= SM_WRITE;
               else
                  state <= SM_IDLE;
               end if;

            when SM_READ => 
               if rd_done = '1' then
                  state <= SM_RESP;
               else
                  state <= SM_READ;
               end if;

            when SM_WRITE=> 
               if (wr_done = '1') then
                  state <= SM_RESP;
               else
                  state <= SM_WRITE;
               end if;

            when SM_RESP => 
               if ((S_AXI_BVALID_I and S_AXI_BREADY) or (S_AXI_RVALID_I and S_AXI_RREADY)) = '1' then
                  state <= SM_IDLE;
               else
                  state <= SM_RESP;
               end if;

            when OTHERS =>  
               state <= SM_IDLE;
               
         end case;
      end if;
   end if;
end process;

-------------------------------------------------------------------------------
-- Read Data / Read Response Logic 
-------------------------------------------------------------------------------
-- generate the read valid (s_axi_rvalid)
process (S_AXI_ACLK) is
  begin
    if rising_edge(S_AXI_ACLK) then
      if (rst = '1') then
         s_axi_rvalid_i <= '0';
      elsif ((state = SM_READ) and rd_done = '1') then
         s_axi_rvalid_i <= '1';
      elsif (S_AXI_RREADY = '1') then
         s_axi_rvalid_i <= '0';
      end if;
    end if;
end process;

-- (s_axi_rresp / s_axi_rdata)
process (S_AXI_ACLK) is
  begin
    if rising_edge(S_AXI_ACLK) then
      if (rst = '1') then
        s_axi_rresp_i <= (others => '0');
        s_axi_rdata_i <= (others => '0');
      elsif state = SM_READ then
        s_axi_rresp_i <= "00";
        s_axi_rdata_i <=  read_data;
      end if;
    end if;
end process;

-- port connections
s_axi_rresp     <= s_axi_rresp_i; 
s_axi_rdata     <= s_axi_rdata_i; 
S_AXI_RVALID    <= s_axi_rvalid_i;

-------------------------------------------------------------------------------
-- Write Response Logic
-------------------------------------------------------------------------------
-- write response command (s_axi_bresp)
process (S_AXI_ACLK) is
  begin
    if rising_edge(S_AXI_ACLK) then
      if (rst = '1') then
      	s_axi_bresp_i <= (others => '0');
      elsif (state = SM_WRITE) then
         s_axi_bresp_i <= "00";
      end if;
    end if;
end process;

-- write response valid signal (s_axi_bvalid)
process (S_AXI_ACLK) is
  begin
    if rising_edge(S_AXI_ACLK) then
      if rst = '1' then
         s_axi_bvalid_i <= '0';
      elsif ((state = SM_WRITE) and wr_done = '1') then
         s_axi_bvalid_i <= '1';
      elsif (S_AXI_BREADY = '1') then
         s_axi_bvalid_i <= '0';
      end if;
    end if;
end process;

-- port connections
S_AXI_BVALID    <= s_axi_bvalid_i;
S_AXI_BRESP     <= s_axi_bresp_i;

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

