----------------------------------------------------------------------------------
-- Company: Technische Universitaet Hamburg
-- Engineer: Shashwat S. Sanghavi
-- 
-- Create Date: 18.02.2020 10:32:31
-- Design Name: 
-- Module Name: SNG - Behavioral
-- Project Name: SNG 
-- Target Devices: TeraSIC DE-10 NANO Board
-- Tool Versions: Quartus Prime Lite Edition 19.1
-- Description: The following VHDL  maps binary to stochastic number representation. LFSR generates 8 bit random number
-- 
-- Dependencies: 
-- Revision 2.0  - Code migration to Intel Quartus for Cyclone V. Compilation error in SR realization resolved by cyclic assignment
-- Revision 1.0  - Code added
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SNG is
    Port ( clk_in : in STD_LOGIC;
           rstn_in : in STD_LOGIC;
           seed_in : in STD_LOGIC_VECTOR(7 downto 0);
           x : in STD_LOGIC_VECTOR (7 downto 0);
           random_number : out STD_LOGIC_VECTOR (7 downto 0);
           X_q_bitwise : out std_logic;
           X_q : out STD_LOGIC_VECTOR (7 downto 0);
		   probability_out : out STD_LOGIC_VECTOR(7 downto 0));
end SNG;

architecture Behavioral of SNG is

component LFSR_8bit is
    Port ( clk_in : in STD_LOGIC;
           rstn_in : in STD_LOGIC;
           seed_in : in STD_LOGIC_VECTOR (7 downto 0);
           pn_out : out STD_LOGIC;
           random_vector : out STD_LOGIC_VECTOR(7 downto 0);
           ready : out STD_LOGIC);
end component;

signal X_q_signal : std_logic_vector(7 downto 0):=x"00";
signal lfsr_ready : std_logic:='0';
signal random_number_s : std_logic_vector(7 downto 0):=(others=>'1');
signal x_bit_signal : std_logic:='0';
signal sr_reg : std_logic_vector(7 downto 0):=x"00";
signal bit_counter : integer range 0 to 256 := 0;
signal bit_ones_counter : integer range 0 to 256 := 0;

begin

process(clk_in)
begin
    if(rising_edge(clk_in))then
        if(rising_edge(rstn_in))then
				 if(x < random_number_s)then
					  x_bit_signal <= '1';
					  bit_ones_counter <= bit_ones_counter + 1;
				 else
					  x_bit_signal <= '0';
				 end if;
				 
				 
				 if(bit_counter<=255)then
					bit_counter <= bit_counter + 1;
				 elsif (bit_counter=256)then
					bit_counter <= 0;
					bit_ones_counter <= 0;
				 else
					sr_reg <= std_logic_vector(to_unsigned(bit_ones_counter,sr_reg'length));
					bit_ones_counter<=0;
					bit_counter <= 0;
				 end if;
        else
            sr_reg <= x"00";
				bit_counter <= 0;
				bit_ones_counter <= 0;
        end if;
    end if;
end process;

-- AUSGÄNGE (NET-->PORT)
X_q_bitwise <= x_bit_signal;
X_q<= sr_reg;
probability_out <= std_logic_vector(to_unsigned(bit_ones_counter, probability_out'length));
-- VOM PORT zur NET Verbindungen ABGESCHLOSSEN


random_number <= random_number_s;



-- KOMPONENTE INSTANTIATION
lfsr_inst : LFSR_8bit 
    Port map ( clk_in => clk_in,
           rstn_in => rstn_in,
           seed_in => seed_in,
           pn_out => open,
           random_vector => random_number_s,
           ready => lfsr_ready);
           

           
end Behavioral;
