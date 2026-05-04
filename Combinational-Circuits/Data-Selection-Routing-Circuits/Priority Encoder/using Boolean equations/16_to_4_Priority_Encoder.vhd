library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity priority_encoder_16to4 is
    Port (
        D : in STD_LOGIC_VECTOR(15 downto 0);
        Y : out STD_LOGIC_VECTOR(3 downto 0);
        V : out STD_LOGIC
    );
end priority_encoder_16to4;

architecture Behavioral of priority_encoder_16to4 is
begin

    Y(3) <= D(15) or D(14) or D(13) or D(12) or
            D(11) or D(10) or D(9) or D(8);

    Y(2) <= D(15) or D(14) or D(13) or D(12) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (D(11) or D(10) or D(9) or D(8))) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and
             (D(7) or D(6) or D(5) or D(4)));

    Y(1) <= D(15) or D(14) or
            ((not D(15)) and (not D(14)) and D(13)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and D(11)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and D(9)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and D(7)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and
             (not D(7)) and (not D(6)) and D(5)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and
             (not D(7)) and (not D(6)) and (not D(5)) and (not D(4)) and D(3)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and
             (not D(7)) and (not D(6)) and (not D(5)) and (not D(4)) and
             (not D(3)) and (not D(2)) and D(1));

    Y(0) <= D(15) or
            ((not D(15)) and D(14)) or
            ((not D(15)) and (not D(14)) and D(13)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and D(12)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and D(11)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and D(10)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and D(9)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and D(8)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and D(7)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and
             (not D(7)) and D(6)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and
             (not D(7)) and (not D(6)) and D(5)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and
             (not D(7)) and (not D(6)) and (not D(5)) and D(4)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and
             (not D(7)) and (not D(6)) and (not D(5)) and (not D(4)) and D(3)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and
             (not D(7)) and (not D(6)) and (not D(5)) and (not D(4)) and
             (not D(3)) and D(2)) or
            ((not D(15)) and (not D(14)) and (not D(13)) and (not D(12)) and
             (not D(11)) and (not D(10)) and (not D(9)) and (not D(8)) and
             (not D(7)) and (not D(6)) and (not D(5)) and (not D(4)) and
             (not D(3)) and (not D(2)) and D(1));

    V <= D(15) or D(14) or D(13) or D(12) or
         D(11) or D(10) or D(9) or D(8) or
         D(7) or D(6) or D(5) or D(4) or
         D(3) or D(2) or D(1) or D(0);

end Behavioral;