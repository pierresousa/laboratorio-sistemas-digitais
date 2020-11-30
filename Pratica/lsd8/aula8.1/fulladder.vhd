LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity fulladder is
    port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
        );
end fulladder;
architecture RTL OF fulladder is
begin
	Csaida:process(x,y,Cin)
	begin
		 Cout <= (x AND y) OR (x AND Cin) OR (y AND Cin);
	end process Csaida;
	Ssaida:process(x,y,Cin)
	begin
		
		s <= x XOR y XOR Cin;
		
	end process Ssaida;
--		s <= x XOR y XOR Cin;
--		Cout <= (x AND y) OR (Cin AND x) OR (Cin AND y);

end RTL ;