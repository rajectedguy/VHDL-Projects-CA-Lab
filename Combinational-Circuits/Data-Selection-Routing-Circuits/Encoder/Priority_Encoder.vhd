library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity priority_encoder8to3 is
    Port (
        I7 : in STD_LOGIC;
        I6 : in STD_LOGIC;
        I5 : in STD_LOGIC;
        I4 : in STD_LOGIC;
        I3 : in STD_LOGIC;
        I2 : in STD_LOGIC;
        I1 : in STD_LOGIC;
        I0 : in STD_LOGIC;
        Y2 : out STD_LOGIC;
        Y1 : out STD_LOGIC;
        Y0 : out STD_LOGIC
    );
end priority_encoder8to3;

architecture Behavioral of priority_encoder8to3 is
begin
    Y2 <= I7 or I6 or I5 or I4;
    Y1 <= I7 or I6 or (not I7 and not I6 and not I5 and not I4 and (I3 or I2));
    Y0 <= I7 or (not I7 and I5) or
          (not I7 and not I6 and not I5 and I3) or
          (not I7 and not I6 and not I5 and not I4 and not I3 and I1);
end Behavioral;