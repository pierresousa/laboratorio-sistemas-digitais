-- pseudo_mux - A Finite State Machine that mimics the behavior of mux
-- Copyright (C) 2018  Digital Systems Group - UFMG
-- 
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
-- 
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, see <https://www.gnu.org/licenses/>.
--

library ieee;
use ieee.std_logic_1164.all;

entity pseudo_mux is
    port (
        RESET   : in    std_logic; -- reset input
        CLOCK   : in    std_logic; -- clock input
        S       : in    std_logic; -- control input
        A,B,C,D : in    std_logic; -- data inputs
        Q       : out   std_logic  -- data output
    );
end pseudo_mux;

architecture arch of pseudo_mux is
	type State_type is (ST0, ST1, ST2, ST3);
	signal estado_atual, estado_proximo : State_type:=ST0;
	signal aux_S : std_logic := '0';
begin
	
	CI_SEQ: process (CLOCK, RESET)
		begin 
			if RESET = '1' then
				estado_atual <= ST0;
			elsif (rising_edge(CLOCK)) then
				estado_atual <= estado_proximo;
				aux_S <= S;
			end if;
	end process CI_SEQ;
		
	CI_COMB: process (estado_atual, S, aux_S)
		begin
			case estado_atual is
				when ST0 =>
					if (S = '1' and aux_S = '0') then
						estado_proximo <= ST1;
					else
						estado_proximo <= ST0;
					end if;
				when ST1 =>
					if (S = '1' and aux_S = '0') then
						estado_proximo <= ST2;
					else
						estado_proximo <= ST1;
					end if;
				when ST2 =>
					if (S = '1' and aux_S = '0') then
						estado_proximo <= ST3;
					else
						estado_proximo <= ST2;
					end if;
				when others =>
					estado_proximo <= ST0;
			end case;
	end process CI_COMB;
	
	with estado_atual select
	Q <= A when ST0,
		  B when ST1,
		  C when ST2,
		  D when ST3,
		  A when others;
    
end arch;
