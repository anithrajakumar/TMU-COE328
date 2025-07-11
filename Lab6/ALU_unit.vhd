LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU_unit is
    port (
		  Reg1    : in std_logic_vector(7 downto 0);  -- 8-bit input A (from Reg1)
        Reg2    : in std_logic_vector(7 downto 0);  -- 8-bit input B (from Reg2)
        clk     : in std_logic;
        reset   : in std_logic;  -- Reset signal
        opcode  : in std_logic_vector(7 downto 0);  -- 8-bit opcode from Decoder
		  LS_result : out std_logic_vector(3 downto 0);
		  RS_result : out std_logic_vector(3 downto 0)
    );
end ALU_unit;

architecture calculation of ALU_unit is
	SIGNAL Result : STD_LOGIC_VECTOR(7 DOWNTO 0) ;
begin
    process (clk, reset)
    begin
        if reset = '0' then
            Result <= "00000000";  -- Reset Result to "00000000"
        elsif (clk'EVENT AND clk = '1') then
            case opcode is
                when "00000001" => -- ADDING Unit --
                    result <= reg1 + reg2;
                when "00000010" => -- SUBTRACTOR Unit --
							if reg1 > reg2 then
								result <= reg1 - reg2;
							else
								result <= reg2 - reg1;
							end if;
                    
                when "00000100" => -- INVERSE Unit -- 
                    result <= NOT reg1;
                when "00001000" => -- NAND Unit
                    result <= reg1 NAND reg2;
                when "00010000" => -- NOR Unit --
                    result <= reg1 NOR reg2;
                when "00100000" => -- AND Unit --
                    result <= reg1 AND reg2;
                when "01000000" => -- XOR Unit --
                    result <= reg1 XOR reg2;
                when "10000000" => -- OR Unit --
                    result <= reg1 OR reg2;
                when others =>
            end case;
        end if;
		   
			-- Spliting the result into two 4 bit results --
			LS_result <= Result(7 downto 4);
			RS_result <= Result(3 downto 0);
			
    end process;

end calculation;
