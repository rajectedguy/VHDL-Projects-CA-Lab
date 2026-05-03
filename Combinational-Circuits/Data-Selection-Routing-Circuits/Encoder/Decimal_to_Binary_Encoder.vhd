library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decimal_to_binary_encoder is
    Port (
        D0 : in STD_LOGIC;
        D1 : in STD_LOGIC;
        D2 : in STD_LOGIC;
        D3 : in STD_LOGIC;
        D4 : in STD_LOGIC;
        D5 : in STD_LOGIC;
        D6 : in STD_LOGIC;
        D7 : in STD_LOGIC;
        D8 : in STD_LOGIC;
        D9 : in STD_LOGIC;
        B0 : out STD_LOGIC;
        B1 : out STD_LOGIC;
        B2 : out STD_LOGIC;
        B3 : out STD_LOGIC
    );
end decimal_to_binary_encoder;

architecture Behavioral of decimal_to_binary_encoder is
begin
    B0 <= D1 or D3 or D5 or D7 or D9;
    B1 <= D2 or D3 or D6 or D7;
    B2 <= D4 or D5 or D6 or D7;
    B3 <= D8 or D9;
end Behavioral;