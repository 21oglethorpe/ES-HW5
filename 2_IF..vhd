----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2021 01:06:44 PM
-- Design Name: 
-- Module Name: 2_if - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity num2_if is
port(A_1,A_2, B_1, B_2, D   : in std_logic;
    E_out: out std_logic);
end num2_if;

architecture Behavioral of num2_if is
begin
process(A_1,A_2, B_1, B_2, D)
begin 
if (A_1 = '1' AND A_2= '1')  OR (B_1 = '1'OR B_2= '1') OR (B_1 = '1'AND D = '0') then
    E_out <= '1';
else
    E_out <= '0';
end if;

end process;



end Behavioral;
