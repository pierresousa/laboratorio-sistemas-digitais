library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity tb_lsd10 is
end tb_lsd10;

architecture teste of tb_lsd10 is
	component lsd10 is
		port (	x	: in std_logic_vector(3 downto 0);
					result	: out std_logic_vector(3 downto 0)
		);
	end component;

	signal x_tb	: std_logic_vector(3 downto 0);
	signal result_tb	: std_logic_vector(3 downto 0);

	begin
		intancia_lsd10: lsd10 port map (x=>x_tb, result=>result_tb);
		
		process is
			file arquivo_entrada  : text open read_mode is "arquivo.txt";
			file arquivo_saida : text open write_mode is "saida1.txt";
			file arquivo_saida_esperada : text open read_mode is "saida2.txt";
			variable linha_arquivo : line;
			variable entrada  : std_logic_vector(3 downto 0);
			variable esperado  : std_logic_vector(3 downto 0);
		begin
			while not endfile(arquivo_entrada) loop
				readline(arquivo_entrada, linha_arquivo);  -- Le a linha do arquivo arquivo_entrada e atribui a linha_arquivo
				read(linha_arquivo, entrada);          -- Atribui a entrada o valor de  linha_arquivo
				
				x_tb <= entrada;
				wait for 10 ns;
				
				readline(arquivo_saida_esperada, linha_arquivo); -- Le a linha do arquivo arquivo_saida_esperada e atribui a linha_arquivo
				read(linha_arquivo, esperado); -- Atribui a esperadp o valor de  linha_arquivo
				
				assert result_tb = esperado -- se result_tb for igual a esperado, ignora, contrario gera um report
					report "Saida diverge da esperada"
					severity failure;
				
				write(linha_arquivo, result_tb);              -- Atribui a linha_arquivo o valor de result_tb
				writeline(arquivo_saida, linha_arquivo); -- Escreve no aquivo_saida o valor de linha_arquivo
			end loop;
			-- Fecha os arquivos
			file_close(arquivo_entrada);
			file_close(arquivo_saida);
			file_close(arquivo_saida_esperada);
			wait;
		end process;

end teste;
