library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity all_gates is
    Port (
        A, B : in STD_LOGIC;
        AND_OUT  : out STD_LOGIC;
        OR_OUT   : out STD_LOGIC;
        NOT_OUT  : out STD_LOGIC;
        XOR_OUT  : out STD_LOGIC;
        XNOR_OUT : out STD_LOGIC;
        NAND_OUT : out STD_LOGIC;
        NOR_OUT  : out STD_LOGIC
    );
end all_gates;

architecture Behavioral of all_gates is
begin
    AND_OUT  <= A AND B;
    OR_OUT   <= A OR B;
    NOT_OUT  <= NOT A;
    XOR_OUT  <= A XOR B;
    XNOR_OUT <= A XNOR B;
    NAND_OUT <= A NAND B;
    NOR_OUT  <= A NOR B;
end Behavioral;