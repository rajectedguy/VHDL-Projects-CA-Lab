library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity keyboard_encoder is
    Port (
        K0 : in STD_LOGIC;
        K1 : in STD_LOGIC;
        K2 : in STD_LOGIC;
        K3 : in STD_LOGIC;
        K4 : in STD_LOGIC;
        K5 : in STD_LOGIC;
        K6 : in STD_LOGIC;
        K7 : in STD_LOGIC;
        K8 : in STD_LOGIC;
        K9 : in STD_LOGIC;
        B0 : out STD_LOGIC;
        B1 : out STD_LOGIC;
        B2 : out STD_LOGIC;
        B3 : out STD_LOGIC
    );
end keyboard_encoder;

architecture Behavioral of keyboard_encoder is
begin
    B0 <= K1 or K3 or K5 or K7 or K9;
    B1 <= K2 or K3 or K6 or K7;
    B2 <= K4 or K5 or K6 or K7;
    B3 <= K8 or K9;
end Behavioral;