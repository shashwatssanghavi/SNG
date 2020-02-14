----------------------------------------------------------------------------------
-- Company: Technische Universität Hamburg
-- Engineer: Shashwat S. Sanghavi
-- 
-- Create Date: 14.02.2020 11:13:22
-- Design Name: 
-- Module Name: SNG_tb - Behavioral
-- Project Name: 
-- Target Devices: TE0820-3CG-1E
-- Tool Versions: Vivado 2018.2
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SNG_tb is
--  Port ( );
end SNG_tb;

architecture Behavioral of SNG_tb is
component SNG is
    Port ( clk_in : in STD_LOGIC;
           rstn_in : in STD_LOGIC;
           seed_in : in STD_LOGIC_VECTOR(7 downto 0);
           x : in STD_LOGIC_VECTOR (7 downto 0);
           random_number : out STD_LOGIC_VECTOR (7 downto 0); -- leave unused as we directly instantiate submodule for the time-being
           X_q : out STD_LOGIC_VECTOR (7 downto 0);
           X_q_bitwise : out STD_LOGIC);
end component;

signal clk_in : std_logic:='0';
signal half_period : time := 5 ns;
signal rstn_in : std_logic := '0';
signal x_signal : std_logic_vector(7 downto 0):= x"64"; -- 100 decimal
signal seed_in : std_logic_vector(7 downto 0):= x"63"; -- 01100011 -- Px= 4/8
signal X_q : std_logic_vector(7 downto 0);
signal random_number : std_logic_vector(7 downto 0);
signal X_q_bitwise : std_logic;
signal clk_counter : integer range 0 to 255:= 0;

begin

clk_in <= not clk_in after half_period;

process
begin
    rstn_in <= '1';
    wait for 10ns;
    
    rstn_in <='0';
    wait for 10 ns;
    
    rstn_in <='1';
    
    
    
    wait;
end process;


process(clk_in)
begin
    if (rising_edge(clk_in))then
        if(clk_counter<255)then
            clk_counter<= clk_counter+1;
        else
            clk_counter<=0;
        end if;
    end if;

end process;

---INSTANTIATION
uut : SNG
port map(
        clk_in => clk_in,
        rstn_in => rstn_in,
        seed_in => seed_in,
        x => x_signal,
        random_number => random_number,
        X_q => X_q,
        X_q_bitwise => X_q_bitwise);
end Behavioral;
