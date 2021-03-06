-- library declaration
library IEEE;
use IEEE.std_logic_1164.all;
-- entity
entity mux_8to1_ce is
port ( Data_in : in std_logic_vector (7 downto 0);
SEL : in std_logic_vector (2 downto 0);
CE : in std_logic;
F_CTRL : out std_logic);
end mux_8to1_ce;
-- architecture
architecture my_case_ex of mux_8to1_ce is
begin
my_mux: process (SEL,Data_in,CE)
begin
if (CE = '1') then
case (SEL) is
when "000" => F_CTRL <= Data_in(0);
when "001" => F_CTRL <= Data_in(1);
when "010" => F_CTRL <= Data_in(2);
when "011" => F_CTRL <= Data_in(3);
when "100" => F_CTRL <= Data_in(4);
when "101" => F_CTRL <= Data_in(5);
when "110" => F_CTRL <= Data_in(6);
when "111" => F_CTRL <= Data_in(7);
when others => F_CTRL <= '0';
end case;
else
F_CTRL <= '0';
end if;
end process my_mux;
end my_case_ex;
