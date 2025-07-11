LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY boolean_sseg IS
    PORT (bcd 		 : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			 leds     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END boolean_sseg;

ARCHITECTURE Behavior OF boolean_sseg IS
BEGIN
    PROCESS (bcd)
    BEGIN
        CASE bcd IS
            WHEN "0000" => leds <= "0001001" ;
				WHEN "1111" => leds <= "1000100" ;
            WHEN OTHERS => leds <= "1111111" ;
        END CASE ;
    END PROCESS ;
END Behavior ;