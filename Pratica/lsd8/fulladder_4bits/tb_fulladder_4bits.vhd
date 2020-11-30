LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
entity tb_fulladder_4bits is
end tb_fulladder_4bits;
 
architecture teste of tb_fulladder_4bits is

component fulladder_4bits is
	port( vem : in std_logic;
		  e_a   : in std_logic_vector(3 downto 0);
		  e_b   : in std_logic_vector(3 downto 0);
		  vai   : out std_logic;
		  saida : out std_logic_vector(3 downto 0)
	  );
end component;

signal CIN_tb, COUT_tb: std_logic;
signal X_tb, Y_tb, S_tb: std_logic_vector(3 downto 0);
begin
instancia_fulladder_4bits: fulladder_4bits port map (vem=>CIN_tb,e_a=>X_tb,e_b=>Y_tb,saida=>S_tb,vai=>COUT_tb);
X_tb <= "0000", "0001" after 10 ns, "0101" after 20 ns, "1111" after 30 ns;
Y_tb <= "0000", "0011" after 10 ns, "0101" after 20 ns, "1110" after 30 ns, "1111" after 40 ns;
CIN_tb <= '0', '1' after 15 ns, '0' after 25 ns, '1' after 35 ns, '0' after 45 ns;
end teste;