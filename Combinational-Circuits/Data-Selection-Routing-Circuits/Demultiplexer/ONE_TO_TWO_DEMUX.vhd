library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux1to2_enable is
    Port (
        I   : in STD_LOGIC;
        S   : in STD_LOGIC;
        EN  : in STD_LOGIC;
        Y0  : out STD_LOGIC;
        Y1  : out STD_LOGIC
    );
end demux1to2_enable;

architecture Behavioral of demux1to2_enable is
begin
    Y0 <= I and not S and EN;
    Y1 <= I and S and EN;
end Behavioral;