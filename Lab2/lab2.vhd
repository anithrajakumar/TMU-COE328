LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab2 IS
PORT (
x1,x2,x3,x4 : IN STD_LOGIC ;
f : OUT STD_LOGIC );
end lab2;

ARCHITECTURE Behavior OF lab2 IS
BEGIN
-- Function 11: 0 4 6 9 11 12 13 --
f <= ((NOT x1) AND (NOT x3) AND (NOT x4)) OR
	  ((NOT x1) AND (x2) AND (NOT x4)) OR
	  ((x1) AND (x2) AND (NOT x3)) OR
	  ((x1) AND (NOT x2) AND (x4));
END Behavior;