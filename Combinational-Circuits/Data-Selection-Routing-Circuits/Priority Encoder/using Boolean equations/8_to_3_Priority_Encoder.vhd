library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity priority_encoder_8to3 is
    Port (
        D : in STD_LOGIC_VECTOR(7 downto 0);
        Y : out STD_LOGIC_VECTOR(2 downto 0);
        V : out STD_LOGIC
    );
end priority_encoder_8to3;

architecture Behavioral of priority_encoder_8to3 is
begin
    Y(2) <= D(7) or D(6) or D(5) or D(4);

    Y(1) <= D(7) or D(6) or
            ((not D(7)) and (not D(6)) and (not D(5)) and (not D(4)) and (D(3) or D(2)));

    Y(0) <= D(7) or
            ((not D(7)) and (not D(6)) and D(5)) or
            ((not D(7)) and (not D(6)) and (not D(5)) and (not D(4)) and D(3)) or
            ((not D(7)) and (not D(6)) and (not D(5)) and (not D(4)) and (not D(3)) and (not D(2)) and D(1));

    V <= D(7) or D(6) or D(5) or D(4) or D(3) or D(2) or D(1) or D(0);

end Behavioral;