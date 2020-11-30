LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity tb_FlipFlopD is
end tb_FlipFlopD;

architecture teste of tb_FlipFlopD is

component FlipFlopD is
	port( clock: in std_logic;
		  D: in std_logic;
	      Q: out std_logic
	    );
end component;

signal CLK, d ,q : std_logic;
begin
instance_FlipFlopD: FlipFlopD port map(clock=>CLK,D=>d,Q=>q);
d <= '0','1' after 20 ns,'0' after 40 ns,'1' after 60 ns;
CLK <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns, '0' after 60 ns, '1' after 70 ns;

end teste;
	