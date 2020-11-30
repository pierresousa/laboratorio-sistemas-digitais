LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
entity tb_fulladder is
end tb_fulladder;
 
architecture teste of tb_fulladder is

component fulladder is
	port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
    );
end component;

signal cin_tb, X_tb, Y_tb, S_tb, cout_tb: std_logic;
begin
instancia_fulladder: fulladder port map (Cin=>cin_tb,x=>X_tb,y=>Y_tb,s=>S_tb,Cout=>cout_tb);
X_tb <= '1', '0' after 10 ns, '1' after 20 ns, '0' after 30 ns, '1' after 40 ns, '0' after 50 ns, '1' after 60 ns, '0' after 70 ns;
Y_tb <= '0', '1' after 10 ns, '0' after 30 ns, '1' after 50 ns;
cin_tb <= '0', '1' after 30 ns;
end teste;