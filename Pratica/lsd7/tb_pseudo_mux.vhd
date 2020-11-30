library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_pseudo_mux is

end tb_pseudo_mux;


architecture teste of tb_pseudo_mux is

component pseudo_mux is 
port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q       : out   std_logic  -- data output
);
end component;

signal CLOCK, RESET, S, A, B, C, D, Q: std_logic;
begin
instancia_pseudo_mux: pseudo_mux port map (CLOCK=>CLOCK,RESET=>RESET,S=>S,A=>A,B=>B,C=>C,D=>D,Q=>Q);
CLOCK <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns, '0' after 50 ns, '1' after 55 ns, '0' after 60 ns, '1' after 65 ns, '0' after 70 ns, '1' after 75 ns, '0' after 80 ns;
RESET <= '0', '0' after 2 ns, '1' after 41 ns, '0' after 42 ns;
S <= '1', '1' after 5 ns, '0' after 10 ns, '0' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '0' after 45 ns, '0' after 50 ns, '1' after 55 ns, '0' after 60 ns, '1' after 65 ns, '0' after 70 ns, '1' after 75 ns, '0' after 80 ns;
A <= '1';
B <= '0';
C <= '1';
D <= '1';
end teste;