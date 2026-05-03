library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity binary_encoder8to3 is
    Port (
        I0 : in STD_LOGIC;
        I1 : in STD_LOGIC;
        I2 : in STD_LOGIC;
        I3 : in STD_LOGIC;
        I4 : in STD_LOGIC;
        I5 : in STD_LOGIC;
        I6 : in STD_LOGIC;
        I7 : in STD_LOGIC;
        Y0 : out STD_LOGIC;
        Y1 : out STD_LOGIC;
        Y2 : out STD_LOGIC
    );
end binary_encoder8to3;

architecture Behavioral of binary_encoder8to3 is
begin
    Y0 <= I1 or I3 or I5 or I7;
    Y1 <= I2 or I3 or I6 or I7;
    Y2 <= I4 or I5 or I6 or I7;
end Behavioral;