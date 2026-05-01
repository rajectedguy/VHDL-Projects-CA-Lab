library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Subtractor is
    Port (
        X      : in  STD_LOGIC_VECTOR(2 downto 0); -- X(2)=A, X(1)=B, X(0)=Bin
        Y      : out STD_LOGIC_VECTOR(1 downto 0)  -- Y(1)=Diff, Y(0)=Borrow
    );
end Full_Subtractor;

architecture Behavioral of Full_Subtractor is
begin
    Y(1) <= X(2) xor X(1) xor X(0);  -- Difference
    Y(0) <= ((not X(2)) and X(1)) or 
            ((not X(2)) and X(0)) or 
            (X(1) and X(0));         -- Borrow
end Behavioral;