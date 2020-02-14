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
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SNG is
    Port ( clk_in : in STD_LOGIC;
           rstn_in : in STD_LOGIC;
           seed_in : in STD_LOGIC_VECTOR(7 downto 0);
           x : in STD_LOGIC_VECTOR (7 downto 0);
           random_number : out STD_LOGIC_VECTOR (7 downto 0); -- leave unused as we directly instantiate submodule for the time-being
           X_q_bitwise : out std_logic;
           X_q : out STD_LOGIC_VECTOR (7 downto 0));
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

signal X_q_signal : std_logic_vector(7 downto 0):=x"FF"; --shift register
signal lfsr_ready : std_logic:='0';
signal bit_counter : std_logic_vector(2 downto 0):="000";
signal random_number_s : std_logic_vector(7 downto 0):=(others=>'1');

begin

process(clk_in)
begin
    if(rising_edge(clk_in))then
        if(rstn_in/='0')then
                if(x < random_number_s)then
                    X_q_bitwise <= '1';
                else
                    X_q_bitwise <= '0';
                end if;
        else
            X_q_signal <= x"00";
        end if;
    end if;
end process;

X_q<=X_q_signal;
random_number<=random_number_s;

lfsr_inst : LFSR_8bit 
    Port map ( clk_in => clk_in,
           rstn_in => rstn_in,
           seed_in => seed_in,
           pn_out => open,
           random_vector => random_number_s,
           ready => lfsr_ready);
           

           
end Behavioral;
