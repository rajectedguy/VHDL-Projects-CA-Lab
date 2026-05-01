library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1_enable is
    Port (
        I0  : in STD_LOGIC;
        I1  : in STD_LOGIC;
        I2  : in STD_LOGIC;
        I3  : in STD_LOGIC;
        S0  : in STD_LOGIC;
        S1  : in STD_LOGIC;
        EN  : in STD_LOGIC;
        Y   : out STD_LOGIC
    );
end mux4to1_enable;

architecture Behavioral of mux4to1_enable is
begin
    Y <= ((I0 and not S1 and not S0) or
          (I1 and not S1 and S0) or
          (I2 and S1 and not S0) or
          (I3 and S1 and S0)) and EN;
end Behavioral;