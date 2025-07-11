LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU_unit_p3 is
    port (
		  Reg1    		: in std_logic_vector(7 downto 0);  -- 8-bit input A (from Reg1)
        Reg2    		: in std_logic_vector(7 downto 0);  -- 8-bit input B (from Reg2)
        clk     		: in std_logic;
        reset   		: in std_logic;  -- Reset signal
        opcode  		: in std_logic_vector(7 downto 0);  -- 8-bit opcode from Decoder
		  result 	   : out std_logic_vector(3 downto 0);
		  student_id   : in std_logic_vector(3 downto 0)  -- 8-bit input stu_id 
    );
end ALU_unit_p3;

architecture calculation of ALU_unit_p3 is
begin
    process (clk, reset, student_id)
    begin
        if reset = '0' then
            result <= "0000";  -- Reset Result to "00000000"
        elsif (clk'EVENT AND clk = '1') then
            case opcode is
                when "00000001" => 
						if student_id(0) = '1' then
                      result <= "1111"; 
						elsif student_id = "0000" then
							 result <= "0000"; 
                  else
                      result <= "0000";
                  end if;
                when "00000010" => 
						if student_id(0) = '1' then
                      result <= "1111"; 
						elsif student_id = "0000" then
							 result <= "0000"; 
                  else
                      result <= "0000";
                  end if;
                when "00000100" => 
                  if student_id(0) = '1' then
                      result <= "1111"; 
						elsif student_id = "0000" then
							 result <= "0000"; 
                  else
                      result <= "0000";
                  end if;
                when "00001000" => 
                  if student_id(0) = '1' then
                      result <= "1111"; 
						elsif student_id = "0000" then
							 result <= "0000"; 
                  else
                      result <= "0000";
                  end if;
                when "00010000" => 
						if student_id(0) = '1' then
                      result <= "1111"; 
						elsif student_id = "0000" then
							 result <= "0000"; 
                  else
                      result <= "0000";
                  end if;
                when "00100000" => 
						if student_id(0) = '1' then
                      result <= "1111"; 
						elsif student_id = "0000" then
							 result <= "0000"; 
                  else
                      result <= "0000";
                  end if;
                when "01000000" => 
                  if student_id(0) = '1' then
                      result <= "1111"; 
						elsif student_id = "0000" then
							 result <= "0000"; 
                  else
                      result <= "0000";
                  end if;
                when "10000000" => 
                  if student_id(0) = '1' then
                      result <= "1111"; 
						elsif student_id = "0000" then
							 result <= "0000"; 
                  else
                      result <= "0000";
                  end if;
                when others =>
            end case;
        end if;	
    end process;

end calculation;
