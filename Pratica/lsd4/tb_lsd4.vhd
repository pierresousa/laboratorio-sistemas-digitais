library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_lsd4 is
end tb_lsd4;

architecture teste of tb_lsd4 is

component lsd4 is
port (	a, b 	: in std_logic_vector(3 downto 0);
		Am, Bm, ABi : out std_logic );
end component;

signal A, B: std_logic_vector(3 downto 0);
signal Am, Bm, ABi : std_logic;
begin
instancia_lsd4: lsd4 port map(a=>A,b=>B,Am=>Am,Bm=>Bm,ABi=>ABi);
A <= x"0", x"3" after 20 ns, x"2" after 40 ns, x"4" after 60 ns, x"1" after 80 ns, x"1" after 100 ns, x"3" after 120 ns;
B <= x"0", x"4" after 10 ns, x"3" after 30 ns, x"1" after 50 ns, x"1" after 70 ns, x"3" after 90 ns, x"4" after 110 ns;
end teste;