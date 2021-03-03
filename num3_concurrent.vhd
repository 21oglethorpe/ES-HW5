----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2021 02:03:26 PM
-- Design Name: 
-- Module Name: num3_concurrent - Behavioral
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

entity num3_concurrent is
port(A_1,A_2, B_1, B_2, D   : in std_logic;
    E_out: out std_logic);
    end num3_concurrent;

architecture Behavioral of num3_concurrent is

begin
E_out <= (A_1 AND A_2)  OR (B_1 OR B_2) OR (B_2 AND (NOT D));

end Behavioral;
