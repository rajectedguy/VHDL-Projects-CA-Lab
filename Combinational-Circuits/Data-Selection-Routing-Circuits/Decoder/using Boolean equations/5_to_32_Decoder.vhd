library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_5to32 is
    Port (
        A : in STD_LOGIC_VECTOR(4 downto 0);
        Y : out STD_LOGIC_VECTOR(31 downto 0)
    );
end decoder_5to32;

architecture Behavioral of decoder_5to32 is
begin
    Y(0)  <= (not A(4)) and (not A(3)) and (not A(2)) and (not A(1)) and (not A(0));
    Y(1)  <= (not A(4)) and (not A(3)) and (not A(2)) and (not A(1)) and A(0);
    Y(2)  <= (not A(4)) and (not A(3)) and (not A(2)) and A(1) and (not A(0));
    Y(3)  <= (not A(4)) and (not A(3)) and (not A(2)) and A(1) and A(0);
    Y(4)  <= (not A(4)) and (not A(3)) and A(2) and (not A(1)) and (not A(0));
    Y(5)  <= (not A(4)) and (not A(3)) and A(2) and (not A(1)) and A(0);
    Y(6)  <= (not A(4)) and (not A(3)) and A(2) and A(1) and (not A(0));
    Y(7)  <= (not A(4)) and (not A(3)) and A(2) and A(1) and A(0);
    Y(8)  <= (not A(4)) and A(3) and (not A(2)) and (not A(1)) and (not A(0));
    Y(9)  <= (not A(4)) and A(3) and (not A(2)) and (not A(1)) and A(0);
    Y(10) <= (not A(4)) and A(3) and (not A(2)) and A(1) and (not A(0));
    Y(11) <= (not A(4)) and A(3) and (not A(2)) and A(1) and A(0);
    Y(12) <= (not A(4)) and A(3) and A(2) and (not A(1)) and (not A(0));
    Y(13) <= (not A(4)) and A(3) and A(2) and (not A(1)) and A(0);
    Y(14) <= (not A(4)) and A(3) and A(2) and A(1) and (not A(0));
    Y(15) <= (not A(4)) and A(3) and A(2) and A(1) and A(0);

    Y(16) <= A(4) and (not A(3)) and (not A(2)) and (not A(1)) and (not A(0));
    Y(17) <= A(4) and (not A(3)) and (not A(2)) and (not A(1)) and A(0);
    Y(18) <= A(4) and (not A(3)) and (not A(2)) and A(1) and (not A(0));
    Y(19) <= A(4) and (not A(3)) and (not A(2)) and A(1) and A(0);
    Y(20) <= A(4) and (not A(3)) and A(2) and (not A(1)) and (not A(0));
    Y(21) <= A(4) and (not A(3)) and A(2) and (not A(1)) and A(0);
    Y(22) <= A(4) and (not A(3)) and A(2) and A(1) and (not A(0));
    Y(23) <= A(4) and (not A(3)) and A(2) and A(1) and A(0);
    Y(24) <= A(4) and A(3) and (not A(2)) and (not A(1)) and (not A(0));
    Y(25) <= A(4) and A(3) and (not A(2)) and (not A(1)) and A(0);
    Y(26) <= A(4) and A(3) and (not A(2)) and A(1) and (not A(0));
    Y(27) <= A(4) and A(3) and (not A(2)) and A(1) and A(0);
    Y(28) <= A(4) and A(3) and A(2) and (not A(1)) and (not A(0));
    Y(29) <= A(4) and A(3) and A(2) and (not A(1)) and A(0);
    Y(30) <= A(4) and A(3) and A(2) and A(1) and (not A(0));
    Y(31) <= A(4) and A(3) and A(2) and A(1) and A(0);
end Behavioral;