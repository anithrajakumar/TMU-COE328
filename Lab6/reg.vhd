LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity reg IS
    port (
        A    : in  std_logic_vector(7 downto 0);  -- 8-bit A input
        reset  : in  std_logic;                      -- Reset input (active high)
        clk  : in  std_logic;                      -- Clock input
        Q    : out std_logic_vector(7 downto 0)    -- 8-bit output
    );
end reg;

architecture behavior of reg is
begin
    process (reset, clk)
    begin
        if reset = '0' then
            Q <= "00000000";  -- Reset the output to all zeroes when reset is high
        elsif (clk'event and clk = '1') then
            Q <= A;  -- Load the input A to output Q on the rising edge of clk
        end if;
    end process;
end behavior;
