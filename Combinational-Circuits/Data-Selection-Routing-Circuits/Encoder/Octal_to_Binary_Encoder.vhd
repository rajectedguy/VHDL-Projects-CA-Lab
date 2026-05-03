library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity octal_to_binary_encoder is
    Port (
        I0 : in STD_LOGIC;
        I1 : in STD_LOGIC;
        I2 : in STD_LOGIC;
        I3 : in STD_LOGIC;
        I4 : in STD_LOGIC;
        I5 : in STD_LOGIC;
        I6 : in STD_LOGIC;
        I7 : in STD_LOGIC;
        B0 : out STD_LOGIC;
        B1 : out STD_LOGIC;
        B2 : out STD_LOGIC
    );
end octal_to_binary_encoder;

architecture Behavioral of octal_to_binary_encoder is
begin
    B0 <= I1 or I3 or I5 or I7;
    B1 <= I2 or I3 or I6 or I7;
    B2 <= I4 or I5 or I6 or I7;
end Behavioral;