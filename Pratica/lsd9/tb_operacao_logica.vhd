library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_operacao_logica is
end tb_operacao_logica;


architecture teste of tb_operacao_logica is

component operacao_logica is
    port (
        X     : in    std_logic_vector(3 downto 0);
        OUTPUT  : out   std_logic_vector(3 downto 0)
    );
end component;

signal x, output: std_logic_vector(3 downto 0);

begin
instancia_operacao_logica: operacao_logica port map (X=>x,OUTPUT=>output);

x <=  std_logic_vector(to_unsigned(1,4)), 
		std_logic_vector(to_unsigned(2,4)) after 10 ns, 
		std_logic_vector(to_unsigned(3,4)) after 20 ns, 
		std_logic_vector(to_unsigned(4,4)) after 30 ns, 
		std_logic_vector(to_unsigned(5,4)) after 50 ns, 
		std_logic_vector(to_unsigned(6,4)) after 60 ns, 
		std_logic_vector(to_unsigned(7,4)) after 70 ns;

end teste;