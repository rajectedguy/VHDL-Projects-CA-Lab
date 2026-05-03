library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder16to4_enable is
    Port (
        I0   : in STD_LOGIC;
        I1   : in STD_LOGIC;
        I2   : in STD_LOGIC;
        I3   : in STD_LOGIC;
        I4   : in STD_LOGIC;
        I5   : in STD_LOGIC;
        I6   : in STD_LOGIC;
        I7   : in STD_LOGIC;
        I8   : in STD_LOGIC;
        I9   : in STD_LOGIC;
        I10  : in STD_LOGIC;
        I11  : in STD_LOGIC;
        I12  : in STD_LOGIC;
        I13  : in STD_LOGIC;
        I14  : in STD_LOGIC;
        I15  : in STD_LOGIC;
        EN   : in STD_LOGIC;
        Y0   : out STD_LOGIC;
        Y1   : out STD_LOGIC;
        Y2   : out STD_LOGIC;
        Y3   : out STD_LOGIC
    );
end encoder16to4_enable;

architecture Behavioral of encoder16to4_enable is
begin
    Y0 <= EN and (I1 or I3 or I5 or I7 or I9 or I11 or I13 or I15);
    Y1 <= EN and (I2 or I3 or I6 or I7 or I10 or I11 or I14 or I15);
    Y2 <= EN and (I4 or I5 or I6 or I7 or I12 or I13 or I14 or I15);
    Y3 <= EN and (I8 or I9 or I10 or I11 or I12 or I13 or I14 or I15);
end Behavioral;