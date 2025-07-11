LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY johns IS
	PORT (Clrn, Clk : IN STD_LOGIC;
			W         : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
			Q         : OUT STD_LOGIC_VECTOR (0 TO 2));
END johns;

ARCHITECTURE Behaivor OF johns IS
	signal Qreg : STD_LOGIC_VECTOR (0 TO 2);
BEGIN
	PROCESS (Clrn, Clk)
	BEGIN
		IF Clrn = '0' THEN
			Qreg <= "000";
		ELSIF (Clk'EVENT AND Clk = '1') THEN
			Qreg(0) <= NOT (Qreg(2));
			Qreg(1) <= Qreg(0);
			Qreg(2) <= Qreg(1);
		END IF;
		CASE Qreg IS -- d(i), i=4,...,9
			WHEN "000" => W <= "0010"; -- d4 (John: 0 ID: 2)
			WHEN "100" => W <= "0011"; -- d5	(John: 4 ID: 3)
			WHEN "110" => W <= "0110"; -- d6	(John: 6 ID: 6)
			WHEN "111" => W <= "1001"; -- d7	(John: 7 ID: 9)
			WHEN "011" => W <= "0100"; -- d8	(John: 3 ID: 4)
			WHEN "001" => W <= "0000"; -- d9	(John: 1 ID: 0)
			WHEN OTHERS => W <= "----";
		END CASE;
	END PROCESS; -- student ID
	Q <= Qreg; -- d1,d2,d3,d4,d5,d6,d7,d8,d9
END Behaivor; --  5  0  1  2  3  6  9  4  0