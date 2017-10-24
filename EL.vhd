LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY EL IS	--Extensor Lógico
	PORT (A,B: IN STD_LOGIC;
			M: IN STD_LOGIC;
			S: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			SAIDA: OUT STD_LOGIC);
END;

ARCHITECTURE arch OF EL IS

SIGNAL aux: STD_LOGIC_VECTOR (6 DOWNTO 0);

BEGIN
	aux(0) <= NOT M AND A;
	aux(1) <= NOT S(1) AND A AND B;
	aux(2) <= NOT S(1) AND S(0) AND A;
	aux(3) <= M AND S(0) AND NOT A AND B;
	aux(4) <= M AND S(1) AND NOT A AND NOT B;
	
	SAIDA <= aux(0) OR aux(1) OR aux(2) OR aux(3) OR aux(4);
	
END arch;