----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2021 02:48:21 PM
-- Design Name: 
-- Module Name: num7_case - Behavioral
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

entity num7_case is

port(sel : in std_logic_vector(2 downto 0);
    clk : in std_logic;
    decode : out std_logic_vector(7 downto 0));
end num7_case;

architecture Behavioral of num7_case is

begin
process(clk, sel)
begin
if rising_edge(clk) then
case sel is
when "000" => decode <= "00000001";
        when  "001"  => decode <= "00000010"; 
        when  "010" =>  decode <= "00000100"; 
        when  "011" =>  decode <= "00001000"; 
        when  "101" =>  decode <= "00010000"; 
        when  "101" =>  decode <= "00100000"; 
        when  "110" =>  decode <= "01000000"; 
        when  "111" =>  decode <= "10000000";
end case;
end if;
end process;

end Behavioral;
