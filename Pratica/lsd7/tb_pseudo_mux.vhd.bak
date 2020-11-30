library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_mean_4_clocks is
	generic (
        W       :       integer := 32
    );
end tb_mean_4_clocks;


architecture teste of tb_mean_4_clocks is

component mean_4_clocks is 
port (
        CLK     : in    std_logic;
        RESET   : in    std_logic;
        INPUT   : in    std_logic_vector(W - 1 downto 0);
        OUTPUT  : out   std_logic_vector(W - 1 downto 0)
);
end component;

signal clk, reset: std_logic;
signal input, output: std_logic_vector(W - 1 downto 0);
begin
instancia_mean_4_clocks: mean_4_clocks port map (CLK=>clk,RESET=>reset,INPUT=>input,OUTPUT=>output);
clk <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '0' after 40 ns, '1' after 45 ns, '0' after 50 ns, '1' after 55 ns, '0' after 60 ns, '1' after 65 ns, '0' after 70 ns, '1' after 75 ns, '0' after 80 ns;
reset <= '1', '0' after 2 ns, '1' after 41 ns, '0' after 42 ns;
input <= std_logic_vector(to_unsigned(5,W)), std_logic_vector(to_unsigned(10,W)) after 10 ns, std_logic_vector(to_unsigned(0,W)) after 20 ns, std_logic_vector(to_unsigned(25,W)) after 30 ns, std_logic_vector(to_unsigned(15,W))after 50 ns, std_logic_vector(to_unsigned(20,W)) after 60 ns, std_logic_vector(to_unsigned(5,W)) after 70 ns;

end teste;