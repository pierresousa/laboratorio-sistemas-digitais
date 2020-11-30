LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity fulladder_4bits is
    port ( vem : in std_logic;
           e_a   : in std_logic_vector(3 downto 0);
           e_b   : in std_logic_vector(3 downto 0);
           vai   : out std_logic;
           saida : out std_logic_vector(3 downto 0)
        );
end fulladder_4bits;
architecture RTL OF fulladder_4bits is

	component fulladder is
    port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
        );
	end component;
	
	signal vai_aux : std_logic_vector(3 downto 1);
	
begin
	
	x1: fulladder port map (Cin=>vem, 			 x=>e_a(0), y=>e_b(0), s=>saida(0), Cout=>vai_aux(1));
	x2: fulladder port map (Cin=>vai_aux(1),   x=>e_a(1), y=>e_b(1), s=>saida(1), Cout=>vai_aux(2));
	x3: fulladder port map (Cin=>vai_aux(2),   x=>e_a(2), y=>e_b(2), s=>saida(2), Cout=>vai_aux(3));
	x4: fulladder port map (Cin=>vai_aux(3),   x=>e_a(3), y=>e_b(3), s=>saida(3), Cout=>vai);

end RTL ;