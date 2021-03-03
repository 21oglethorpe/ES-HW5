----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2021 02:39:52 PM
-- Design Name: 
-- Module Name: num7_if - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

entity num7_if is
port(sel : in std_logic_vector(2 downto 0);
    clk : in std_logic;
    decode : out std_logic_vector(7 downto 0));
end num7_if;

architecture Behavioral of num7_if is

begin
process(sel, clk)
    begin
    if rising_edge(clk) then
           if sel = "000" then decode <= "00000001";
        elsif sel = "001" then decode <= "00000010"; 
        elsif sel = "010" then decode <= "00000100"; 
        elsif sel = "011" then decode <= "00001000"; 
        elsif sel = "101" then decode <= "00010000"; 
        elsif sel = "101" then decode <= "00100000"; 
        elsif sel = "110" then decode <= "01000000"; 
        elsif sel = "111" then decode <= "10000000"; 
        else decode <= "00000000";
        
        end if;
end if;
end process;

end Behavioral;
