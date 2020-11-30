-- alu - An arithmetic Logic Unit
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

-- Define the architecture for this entity.
-- Consider the following operations to calculate the value or RESULT:
--      CONTROL             RESULT
--      0000                SRC1 and SRC2 
--      0001                SRC1 or SRC2
--      0010                SRC1 + SRC2
--      0110                SRC1 - SRC2
--      0111                SRC1 < SRC2 ? 1 : 0
--      1100                NOT( SRC1 or SRC2 )

-- Consider the following behavior for the ZERO output:
--  ZERO <= RESULT == 0 ? 1 : 0


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
    generic (
        W       :       integer := 32
    );
    port (
        CONTROL : in    std_logic_vector(3 downto 0);
        SRC1    : in    std_logic_vector(W - 1 downto 0);
        SRC2    : in    std_logic_vector(W - 1 downto 0);
        RESULT  : out   std_logic_vector(W - 1 downto 0);
        ZERO    : out   std_logic
    );
end alu;

architecture arch of alu is
	signal local_count: unsigned(W - 1 downto 0);
begin
	count_vector: process (CONTROL)
		begin
			if CONTROL = "0000" then
				local_count <= unsigned(SRC1) and unsigned(SRC2);
			elsif CONTROL = "0001" then
				local_count <= unsigned(SRC1) or unsigned(SRC2);
			elsif CONTROL = "0010" then
				local_count <= unsigned(SRC1) + unsigned(SRC2);
			elsif CONTROL = "0110" then
				local_count <= unsigned(SRC1) - unsigned(SRC2);
			elsif CONTROL = "0111" then
				if unsigned(SRC1) < unsigned(SRC2) then
					local_count <= to_unsigned(1,W);
				else
					local_count <= to_unsigned(0,W);
				end if;
			elsif CONTROL = "1100" then
				local_count <= not(unsigned(SRC1) or unsigned(SRC2));
			else
				local_count <= to_unsigned(0,W);
			end if;
	end process count_vector;
	
	RESULT <= std_logic_vector(local_count);
	ZERO <= '1' when local_count = "0" else '0' ;
	
end arch;
