library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder8to3_enable is
    Port (
        I0  : in STD_LOGIC;
        I1  : in STD_LOGIC;
        I2  : in STD_LOGIC;
        I3  : in STD_LOGIC;
        I4  : in STD_LOGIC;
        I5  : in STD_LOGIC;
        I6  : in STD_LOGIC;
        I7  : in STD_LOGIC;
        EN  : in STD_LOGIC;
        Y0  : out STD_LOGIC;
        Y1  : out STD_LOGIC;
        Y2  : out STD_LOGIC
    );
end encoder8to3_enable;

architecture Behavioral of encoder8to3_enable is
begin
    Y0 <= EN and (I1 or I3 or I5 or I7);
    Y1 <= EN and (I2 or I3 or I6 or I7);
    Y2 <= EN and (I4 or I5 or I6 or I7);
end Behavioral;