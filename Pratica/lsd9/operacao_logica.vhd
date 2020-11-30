library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity operacao_logica is
    port (
        X     : in    std_logic_vector(3 downto 0);
        OUTPUT  : out   std_logic_vector(3 downto 0)
    );
end operacao_logica;

architecture arch of operacao_logica is
	signal not_X, multp : std_logic_vector(3 downto 0);
	signal aux, p_x, n_x : unsigned(7 downto 0);
begin
	process(X) is
	begin
		not_X <= not(X);
		
		
		p_x <= unsigned(X);
		n_x <= unsigned(not_X);
		
		aux <= p_x * n_x;
		
		OUTPUT <= std_logic_vector(shift_left(aux,1));
	end process;
end arch;
