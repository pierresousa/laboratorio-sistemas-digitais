-- Quartus II VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lsd3 is

	generic
	(
		DATA_WIDTH : natural := 4
	);

	port 
	(
		x	   : in signed	((DATA_WIDTH-1) downto 0);
		y	   : in signed	((DATA_WIDTH-1) downto 0);
		s: out signed ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of lsd3 is
begin

	s <= x + y;

end rtl;
