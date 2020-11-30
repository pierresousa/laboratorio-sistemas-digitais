LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity FlipFlopD is
	port( clock: in std_logic;
		  D: in std_logic;
	      Q: out std_logic
	    );
end FlipFlopD;

architecture RTL of FlipFlopD is	
--	signal r1 : std_logic;
--	signal r2 : std_logic;
--	signal q2 : std_logic;
--	signal q1 : std_logic := '1';
begin
--	r1 <=((NOT D) AND clock);
--	r2 <=(D AND clock);
--	Q <= (r1 NAND q2);
--	q2 <= (r2 NAND q1);
--	Q <= ((NOT(clock) AND clock) AND (NOT(D) AND D));
--	q1 <= Q;
--	process(clock)
--	begin
--		if (clock='1' and clock'event) then
--			Q <= D;
--		end if;
--	end process;
	Q <= D when clock='1' and clock'event;


end RTL;