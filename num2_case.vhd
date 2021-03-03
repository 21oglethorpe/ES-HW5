----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2021 01:24:23 PM
-- Design Name: 
-- Module Name: 2_case - Behavioral
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






entity num2_case is
port(A_1,A_2, B_1, B_2, D   : in std_logic;
    E_out: out std_logic);
end num2_case;

architecture Behavioral of num2_case is
signal A_1A_2B_1B_2D: std_logic_vector(4 downto 0); 
begin
    A_1A_2B_1B_2D <= A_1 & A_2 & B_1 & B_2 & D;
    process(A_1A_2B_1B_2D)
    begin 
        case (A_1A_2B_1B_2D) is
            when "11---" => E_out <= '1';
            when "--1--" => E_out <= '1';
            when "---1-" => E_out <= '1';
            when "---10" => E_out <= '1';
            when others => E_out <= '0';
        end case;
    end process;


end Behavioral;
