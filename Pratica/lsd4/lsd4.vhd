library ieee;
use ieee.std_logic_1164.all;

entity lsd4 is
port (	a, b 	: in std_logic_vector(3 downto 0);
		Am, Bm, ABi : out std_logic );
end lsd4;

architecture comportamental of lsd4 is
begin
		Am <= '1' when a > b else '0';
		Bm <= '1' when a < b else '0';
		ABi <= '1' when a = b else '0';
end comportamental;