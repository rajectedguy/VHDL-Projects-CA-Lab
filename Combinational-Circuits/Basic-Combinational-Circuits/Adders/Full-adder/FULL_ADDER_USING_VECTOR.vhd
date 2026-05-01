library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
    Port (
        X : in  STD_LOGIC_VECTOR(2 downto 0); -- X(2)=A, X(1)=B, X(0)=Cin
        Y : out STD_LOGIC_VECTOR(1 downto 0) -- Y(1)=Carry, Y(0)=Sum
    );
end Full_Adder;

architecture Behavioral of Full_Adder is
begin
    Y(0) <= X(2) xor X(1) xor X(0);

    Y(1) <= (X(2) and X(1)) or
            (X(1) and X(0)) or
            (X(2) and X(0));
end Behavioral;