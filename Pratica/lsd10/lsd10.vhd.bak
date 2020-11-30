library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aula9 is
port (	x	: in std_logic_vector(3 downto 0);
			result	: out std_logic_vector(3 downto 0)
);
end aula9;

architecture funcao of aula9 is
signal a1, a2, a3, a4, r1, r2, r3, r4	:std_logic;
signal r5, r6, r7, r8	:std_logic;
begin
	a1 <= x(0); --D
	a2 <= x(1); --C
	a3 <= x(2); --B
	a4 <= x(3); --A
	
	r1<= '0';
	r2<= '0';
	r3<= a2 xor a1;
	r4<= a3 xor a1;

	
	result(0) <= r1;
	result(1) <= r2;
	result(2) <= r3;
	result(3) <= r4;

end funcao;