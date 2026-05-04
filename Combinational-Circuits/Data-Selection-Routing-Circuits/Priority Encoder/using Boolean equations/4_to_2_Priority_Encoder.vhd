library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity priority_encoder_4to2 is
    Port (
        D : in STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(1 downto 0);
        V : out STD_LOGIC
    );
end priority_encoder_4to2;

architecture Behavioral of priority_encoder_4to2 is
begin
    Y(1) <= D(3) or D(2);
    Y(0) <= D(3) or ((not D(2)) and D(1));
    
    V <= D(3) or D(2) or D(1) or D(0);
end Behavioral;