library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_alu is
	generic (
        W       :       integer := 32
    );
end tb_alu;

architecture teste of tb_alu is

component alu is
port (  CONTROL	: in    std_logic_vector(3 downto 0);
        SRC1	: in    std_logic_vector(W - 1 downto 0);
        SRC2	: in    std_logic_vector(W - 1 downto 0);
        RESULT  : out   std_logic_vector(W - 1 downto 0);
        ZERO    : out   std_logic
);
end component;

signal src1tb, src2tb, resulttb: std_logic_vector(W - 1 downto 0);
signal controltb: std_logic_vector(3 downto 0);
signal zerotb: std_logic;
begin
instancia_alu: alu port map(CONTROL=>controltb,SRC1=>src1tb,SRC2=>src2tb,RESULT=>resulttb,ZERO=>zerotb);
controltb <= "0000", "0001" after 10 ns, "0010" after 20 ns, "0110" after 30 ns, "0111" after 40 ns, "1100" after 50 ns;
src1tb <= std_logic_vector(to_unsigned(5,W));
src2tb <= std_logic_vector(to_unsigned(1,W));



end teste;