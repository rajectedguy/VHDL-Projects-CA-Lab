library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        Cin   : in  STD_LOGIC;
        Sum   : out STD_LOGIC;
        Carry : out STD_LOGIC
    );
end Full_Adder;

architecture Behavioral of Full_Adder is
begin
    Sum   <= A xor B xor Cin;
    Carry <= (A and B) or (B and Cin) or (A and Cin);
end Behavioral;