library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_aula9 is
end tb_aula9;

architecture teste of tb_aula9 is
component aula9 is
port (	x	: in std_logic_vector(3 downto 0);
--			r	: in std_logic_vector(3 downto 0) :="0010";
			result	: out std_logic_vector(3 downto 0)
);
end component;

signal x_tb	: std_logic_vector(3 downto 0);
signal result_tb	: std_logic_vector(3 downto 0);
begin
intancia_aula9: aula9 port map (x=>x_tb, result=>result_tb);
x_tb <= x"7";

end teste;

