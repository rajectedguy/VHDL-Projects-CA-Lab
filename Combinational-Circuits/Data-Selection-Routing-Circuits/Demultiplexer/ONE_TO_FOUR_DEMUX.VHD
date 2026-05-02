library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux1to4_enable is
    Port (
        I   : in STD_LOGIC;
        S0  : in STD_LOGIC;
        S1  : in STD_LOGIC;
        EN  : in STD_LOGIC;
        Y0  : out STD_LOGIC;
        Y1  : out STD_LOGIC;
        Y2  : out STD_LOGIC;
        Y3  : out STD_LOGIC
    );
end demux1to4_enable;

architecture Behavioral of demux1to4_enable is
begin
    Y0 <= I and not S1 and not S0 and EN;
    Y1 <= I and not S1 and S0 and EN;
    Y2 <= I and S1 and not S0 and EN;
    Y3 <= I and S1 and S0 and EN;
end Behavioral;