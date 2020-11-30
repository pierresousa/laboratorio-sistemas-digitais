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
	TYPE State_type IS (SA, SB, SC, SD);
	SIGNAL State : State_type:=SA;
	SIGNAL state_final : std_logic;
begin
	process(CLOCK, RESET)
	begin
		IF(reset = '1') THEN
			State <= SA;
			state_final <= A;
		ELSIF rising_edge(CLOCK) THEN
			IF State = SA THEN
				IF S='1' THEN
					State <= SB;
					state_final <= B;
				END IF;
			ELSIF State = SB THEN
				IF S='1' THEN
					State <= SC;
					state_final <= C;
				END IF;
			ELSIF State = SC THEN
				IF S='1' THEN
					State <= SD;
					state_final <= D;
				END IF;
			ELSIF State = SD THEN
				IF S='1' THEN
					State <= SA;
					state_final <= A;
				END IF;
			ELSE
				State <= SA;
				state_final <= A;
			END IF;
		END IF;
		Q <= state_final;
	END PROCESS;
    
end arch;
