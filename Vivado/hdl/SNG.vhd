----------------------------------------------------------------------------------
-- Company: Technische Universität Hamburg
-- Engineer: Shashwat S. Sanghavi
-- 
-- Create Date: 14.02.2020 10:32:31
-- Design Name: 
-- Module Name: SNG - Behavioral
-- Project Name: SNG 
-- Target Devices: TE0820-3CG-1E
-- Tool Versions: Vivado 2018.2
-- Description: The following VHDL  maps binary to stochastic number representation. An LFSR is for random number generation
-- 
-- Dependencies: 
-- 
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
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SNG is
    Port ( clk_in : in STD_LOGIC;
           rstn_in : in STD_LOGIC;
           en_n_in : in STD_LOGIC;
           seed_in : in STD_LOGIC_VECTOR(7 downto 0);
           x : in STD_LOGIC_VECTOR (7 downto 0); -- k bit number, here 8 bit
           random_number : out STD_LOGIC_VECTOR (7 downto 0);
           X_q_bitwise : out STD_LOGIC;
           prob_equi_out : out STD_LOGIC_VECTOR(7 downto 0)
           );
end SNG;

architecture Behavioral of SNG is

component LFSR_8bit is
    Port ( clk_in : in STD_LOGIC;
           rstn_in : in STD_LOGIC;
           seed_in : in STD_LOGIC_VECTOR (7 downto 0);
           random_vector : out STD_LOGIC_VECTOR(7 downto 0)
           );
end component;

signal bit_counter : std_logic_vector(7 downto 0):=x"00";
signal random_number_s : std_logic_vector(7 downto 0):=(others=>'1');
signal x_bit_signal : std_logic;
signal bit_clk_counter : std_logic_vector(7 downto 0):=(others => '0');

signal temp: std_logic_vector(7 downto 0);

begin

process(clk_in)
begin
    if(rising_edge(clk_in))then
        if(rstn_in/='0')then
                if(en_n_in='0')then
                    if(x < random_number_s)then
                        x_bit_signal <= '1';
                    else
                        x_bit_signal <= '0';
                    end if;
                end if;
        end if;
    end if;
end process;

process(clk_in)
begin
    if rising_edge(clk_in) then
        if(rstn_in/='0')then
            if(en_n_in = '0')then
            
                bit_clk_counter <= bit_clk_counter + '1';
                
                if(x_bit_signal = '1')then
                    
                    bit_counter <= bit_counter + '1';
                    
                    if(bit_clk_counter = x"FF")then
                        prob_equi_out <= bit_counter;
                        bit_counter <= x"00";
                    else
                        prob_equi_out <= x"00";
                    end if;
                else
                    if(bit_clk_counter = x"FF")then
                        prob_equi_out <= bit_counter;
                        bit_counter <= x"00";
                    else
                        prob_equi_out <= x"00";
                    end if;
                end if;
            end if;
        end if;
    end if;
end process;


--All registered outputs
X_q_bitwise <= x_bit_signal;
random_number<=random_number_s;

lfsr_inst : LFSR_8bit 
    Port map ( clk_in => clk_in,
           rstn_in => rstn_in,
           seed_in => seed_in,
           random_vector => random_number_s
          );
           

           
end Behavioral;
