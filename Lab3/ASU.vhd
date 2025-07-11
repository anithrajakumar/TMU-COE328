LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY ASU IS
    PORT (Cin            : IN STD_LOGIC; 
			 X, Y           : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
          S              : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);  
          Cout, Overflow, sign_Bit : OUT STD_LOGIC ); 
END ASU ;

ARCHITECTURE Behavior OF ASU IS
    SIGNAL Sum, Y2comp : STD_LOGIC_VECTOR(4 DOWNTO 0); -- 4 instead of 3 incase of possiblity of carry out;
BEGIN
	 process(X, Y, Cin)-- Expecting change in these variables --
	 BEGIN
		 -- Checking to see if we are adding --
		 IF(Cin = '0') THEN
			-- Turns each vector into 5 bit to account for carrying --
			Sum <= ('0' & X) + ('0' & Y) + Cin ; 
			-- Stores away the first 4 bits for the sum --
			S <= Sum(3 DOWNTO 0) ;
			-- carries out the 5th bit for carry out --
			Cout <= Sum(4);
			-- Help determine if a carry out occurred -- 
			Overflow <= Sum(4);
		 ELSIF(Cin = '1') THEN
			-- subtracts two numbers using two's complement 
			Sum <= ('0' & X) + (NOT('0' & Y)) + Cin;
			-- Stores away the first 4 bits for the sum --
			S <= Sum(3 DOWNTO 0) ;
			-- carries out the 5th bit for carry out --
			Cout <= Sum(4);
			-- Help determine if a carry out occurred -- 
			Overflow <= Sum(4) XOR X(3) XOR Y(3) XOR Sum(3);
		 END IF;
	 END process;
	 
	 PROCESS(Sum)
	 BEGIN
		 IF(Sum(3) = '1') THEN
			sign_Bit <= '1';
		 ELSIF(Sum(3) = '0') THEN
			sign_Bit <= '0';
		 END IF;
	 END PROCESS;
	 
END Behavior ;