library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Subtractor is
    Port (
        A       : in  STD_LOGIC;
        B       : in  STD_LOGIC;
        Bin     : in  STD_LOGIC;
        Diff    : out STD_LOGIC;
        Borrow  : out STD_LOGIC
    );
end Full_Subtractor;

architecture Behavioral of Full_Subtractor is
begin
    Diff   <= A xor B xor Bin;
    Borrow <= ((not A) and B) or ((not (A xor B)) and Bin);
end Behavioral;