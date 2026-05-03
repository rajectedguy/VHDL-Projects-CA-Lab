library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder4to2_enable is
    Port (
        I0  : in STD_LOGIC;
        I1  : in STD_LOGIC;
        I2  : in STD_LOGIC;
        I3  : in STD_LOGIC;
        EN  : in STD_LOGIC;
        Y0  : out STD_LOGIC;
        Y1  : out STD_LOGIC
    );
end encoder4to2_enable;

architecture Behavioral of encoder4to2_enable is
begin
    Y0 <= EN and (I1 or I3);
    Y1 <= EN and (I2 or I3);
end Behavioral;