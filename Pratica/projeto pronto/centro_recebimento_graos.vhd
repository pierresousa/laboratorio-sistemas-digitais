library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity centro_recebimento_graos is
    port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        PODE_PESAR       : in    std_logic; -- permite pesagem do caminhao
        PESO_BRUTO       : in    std_logic_vector(28 downto 0); -- peso bruto do caminhao com carga
        PESO_CAMINHAO       : in    std_logic_vector(28 downto 0); -- peso bruto do caminhao somente
        TIPO_GRAO       : in    std_logic_vector(1 downto 0); -- informa o tipo do grao
		LOCAL_SILO       : out    std_logic_vector(1 downto 0); -- informa o silo referente ao grao
		SENSOR_VAGA_SOJA       : in    std_logic; -- verifica se o silo de soja esta ocupado
		LAMPADA_VAGA_SOJA       : out    std_logic; -- informa se o silo de soja esta ocupado
		SENSOR_VAGA_ARROZ       : in    std_logic; -- verifica se o silo de arroz esta ocupado
		LAMPADA_VAGA_ARROZ       : out    std_logic; -- informa se o silo de arroz esta ocupado
		SENSOR_VAGA_FEIJAO       : in    std_logic; -- verifica se o silo de feijao esta ocupado
		LAMPADA_VAGA_FEIJAO       : out    std_logic; -- informa se o silo de feijao esta ocupado
		MOTOR_ESCOTILHA_SOJA       : out    std_logic_vector(1 downto 0); -- abre a escotilha do silo soja
		MOTOR_ESCOTILHA_ARROZ       : out    std_logic_vector(1 downto 0); -- abre a escotilha do silo arroz
		MOTOR_ESCOTILHA_FEIJAO       : out    std_logic_vector(1 downto 0); -- abre a escotilha do silo feijao
		PESO_CARGA       : out    std_logic_vector(28 downto 0); -- peso da carga
		VALOR_CARGA       : out    std_logic_vector(31 downto 0) -- valor a ser pago pela carga
    );
end centro_recebimento_graos;

architecture arch of centro_recebimento_graos is
	type State_type is (INICIO, 
							  PESAGEM_INICIAL, 
							  ESPERA_VAGA_SOJA, 
							  ENTRA_SILO_SOJA, 
							  DESCARREGA_SOJA, 
							  SAI_SILO_SOJA, 
							  ESPERA_VAGA_ARROZ, 
							  ENTRA_SILO_ARROZ, 
							  DESCARREGA_ARROZ, 
							  SAI_SILO_ARROZ, 
							  ESPERA_VAGA_FEIJAO, 
						      ENTRA_SILO_FEIJAO, 
							  DESCARREGA_FEIJAO, 
							  SAI_SILO_FEIJAO, 
							  ESPERA_PESAGEM_FINAL, 
							  PESAGEM_FINAL);
	signal estado_atual, estado_proximo : State_type:=INICIO;
	signal aux_PODE_PESAR : std_logic := '0';
	signal guarda_PESO_BRUTO : std_logic_vector(28 downto 0);
	signal VALOR_GRAO : std_logic_vector(2 downto 0);
begin
	
	CI_SEQ: process (CLOCK, RESET)
		begin 
			if RESET = '1' then
				estado_atual <= INICIO;
			elsif (rising_edge(CLOCK)) then
				estado_atual <= estado_proximo;
				aux_PODE_PESAR <= PODE_PESAR;
			end if;
	end process CI_SEQ;
		
	CI_COMB: process (estado_atual, PODE_PESAR, aux_PODE_PESAR, SENSOR_VAGA_SOJA, SENSOR_VAGA_ARROZ, SENSOR_VAGA_FEIJAO)
		begin
			case estado_atual is
				when INICIO =>
					if PODE_PESAR = '1' and aux_PODE_PESAR = '0' then
						estado_proximo <= PESAGEM_INICIAL;
					else
						estado_proximo <= INICIO;
					end if;
				when PESAGEM_INICIAL =>
					guarda_PESO_BRUTO <= PESO_BRUTO;
					if TIPO_GRAO = std_logic_vector(to_unsigned(1,2)) then
						estado_proximo <= ESPERA_VAGA_SOJA;
						VALOR_GRAO <= std_logic_vector(to_unsigned(3,3));
					elsif TIPO_GRAO = std_logic_vector(to_unsigned(2,2)) then
						estado_proximo <= ESPERA_VAGA_ARROZ;
						VALOR_GRAO <= std_logic_vector(to_unsigned(4,3));
					elsif TIPO_GRAO = std_logic_vector(to_unsigned(3,2)) then
						estado_proximo <= ESPERA_VAGA_FEIJAO;
						VALOR_GRAO <= std_logic_vector(to_unsigned(2,3));
					else
						estado_proximo <= PESAGEM_INICIAL;
					end if;
				when ESPERA_VAGA_SOJA =>
					if SENSOR_VAGA_SOJA = '0' then
						estado_proximo <= ENTRA_SILO_SOJA;
					else
						estado_proximo <= ESPERA_VAGA_SOJA;
					end if;
				when ENTRA_SILO_SOJA =>
					estado_proximo <= DESCARREGA_SOJA;
				when DESCARREGA_SOJA =>
					if SENSOR_VAGA_SOJA = '0' then
						estado_proximo <= SAI_SILO_SOJA;
					else
						estado_proximo <= DESCARREGA_SOJA;
					end if;
				when SAI_SILO_SOJA =>
					estado_proximo <= ESPERA_PESAGEM_FINAL;
				when ESPERA_VAGA_ARROZ =>
					if SENSOR_VAGA_ARROZ = '0' then
						estado_proximo <= ENTRA_SILO_ARROZ;
					else
						estado_proximo <= ESPERA_VAGA_ARROZ;
					end if;
				when ENTRA_SILO_ARROZ =>
					estado_proximo <= DESCARREGA_ARROZ;
				when DESCARREGA_ARROZ =>
					if SENSOR_VAGA_ARROZ = '0' then
						estado_proximo <= SAI_SILO_ARROZ;
					else
						estado_proximo <= DESCARREGA_ARROZ;
					end if;
				when SAI_SILO_ARROZ =>
					estado_proximo <= ESPERA_PESAGEM_FINAL;
				when ESPERA_VAGA_FEIJAO =>
					if SENSOR_VAGA_FEIJAO = '0' then
						estado_proximo <= ENTRA_SILO_FEIJAO;
					else
						estado_proximo <= ESPERA_VAGA_FEIJAO;
					end if;
				when ENTRA_SILO_FEIJAO =>
					estado_proximo <= DESCARREGA_FEIJAO;
				when DESCARREGA_FEIJAO =>
					if SENSOR_VAGA_FEIJAO = '0' then
						estado_proximo <= SAI_SILO_FEIJAO;
					else
						estado_proximo <= DESCARREGA_FEIJAO;
					end if;
				when SAI_SILO_FEIJAO =>
					estado_proximo <= ESPERA_PESAGEM_FINAL;
				when ESPERA_PESAGEM_FINAL =>
					if PODE_PESAR = '1' and aux_PODE_PESAR = '0' then
						estado_proximo <= PESAGEM_FINAL;
					else
						estado_proximo <= ESPERA_PESAGEM_FINAL;
					end if;
				when PESAGEM_FINAL =>
					estado_proximo <= INICIO;
				when others =>
					estado_proximo <= INICIO;
			end case;
	end process CI_COMB;
	
	with estado_atual select
	LOCAL_SILO <= TIPO_GRAO when PESAGEM_INICIAL,
					std_logic_vector(to_unsigned(0,2)) when others;
	with estado_atual select
	LAMPADA_VAGA_SOJA <= '1' when ENTRA_SILO_SOJA,
							'1' when DESCARREGA_SOJA,
							'0' when SAI_SILO_SOJA,
							SENSOR_VAGA_SOJA when others;
	with estado_atual select
	LAMPADA_VAGA_ARROZ <= '1' when ENTRA_SILO_ARROZ,
							'1' when DESCARREGA_ARROZ,
							'0' when SAI_SILO_ARROZ,
							SENSOR_VAGA_ARROZ when others;
	with estado_atual select
	LAMPADA_VAGA_FEIJAO <= '1' when ENTRA_SILO_FEIJAO,
							'1' when DESCARREGA_FEIJAO,
							'0' when SAI_SILO_FEIJAO,
							SENSOR_VAGA_FEIJAO when others;
	with estado_atual select
	MOTOR_ESCOTILHA_SOJA <= std_logic_vector(to_unsigned(1,2)) when ENTRA_SILO_SOJA,
										std_logic_vector(to_unsigned(0,2)) when DESCARREGA_SOJA,
										std_logic_vector(to_unsigned(2,2)) when SAI_SILO_SOJA,
										std_logic_vector(to_unsigned(0,2)) when others;
	with estado_atual select
	MOTOR_ESCOTILHA_ARROZ <= std_logic_vector(to_unsigned(1,2)) when ENTRA_SILO_ARROZ,
										std_logic_vector(to_unsigned(0,2)) when DESCARREGA_ARROZ,
										std_logic_vector(to_unsigned(2,2)) when SAI_SILO_ARROZ,
										std_logic_vector(to_unsigned(0,2)) when others;
	with estado_atual select
	MOTOR_ESCOTILHA_FEIJAO <= std_logic_vector(to_unsigned(1,2)) when ENTRA_SILO_FEIJAO,
										std_logic_vector(to_unsigned(0,2)) when DESCARREGA_FEIJAO,
										std_logic_vector(to_unsigned(2,2)) when SAI_SILO_FEIJAO,
										std_logic_vector(to_unsigned(0,2)) when others;
	with estado_atual select
	PESO_CARGA <= std_logic_vector(unsigned(guarda_PESO_BRUTO)-unsigned(PESO_CAMINHAO)) when PESAGEM_FINAL,
					std_logic_vector(to_unsigned(0,29)) when others;
	with estado_atual select
	VALOR_CARGA <= std_logic_vector((unsigned(guarda_PESO_BRUTO)-unsigned(PESO_CAMINHAO))*unsigned(VALOR_GRAO)) when PESAGEM_FINAL,
					std_logic_vector(to_unsigned(0,32)) when others;
				
end arch;
