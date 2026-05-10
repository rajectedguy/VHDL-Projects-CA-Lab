library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_segment_decoder is
    Port (
        A : in STD_LOGIC_VECTOR(3 downto 0);  -- Binary input
        Y : out STD_LOGIC_VECTOR(6 downto 0)  -- a,b,c,d,e,f,g
    );
end seven_segment_decoder;

architecture Behavioral of seven_segment_decoder is
begin
    -- Segment a
    Y(6) <= (not A(3) and not A(2) and not A(1) and A(0)) or
            (not A(3) and A(2) and not A(1) and not A(0)) or
            (A(3) and not A(2) and A(1) and A(0)) or
            (A(3) and A(2) and not A(1) and A(0));

    -- Segment b
    Y(5) <= (not A(3) and A(2) and not A(1) and A(0)) or
            (not A(3) and A(2) and A(1) and not A(0)) or
            (A(3) and not A(2) and A(1) and A(0)) or
            (A(3) and A(2) and not A(1) and not A(0)) or
            (A(3) and A(2) and A(1) and not A(0));

    -- Segment c
    Y(4) <= (not A(3) and not A(2) and A(1) and not A(0)) or
            (A(3) and A(2) and not A(1) and not A(0)) or
            (A(3) and A(2) and A(1) and not A(0));

    -- Segment d
    Y(3) <= (not A(3) and not A(2) and not A(1) and A(0)) or
            (not A(3) and A(2) and not A(1) and not A(0)) or
            (not A(3) and A(2) and A(1) and A(0)) or
            (A(3) and not A(2) and A(1) and not A(0)) or
            (A(3) and A(2) and not A(1) and A(0));

    -- Segment e
    Y(2) <= (not A(3) and A(0)) or
            (not A(3) and A(2) and not A(1)) or
            (not A(2) and not A(1) and A(0));

    -- Segment f
    Y(1) <= (not A(3) and not A(2) and A(0)) or
            (not A(3) and not A(2) and A(1)) or
            (not A(3) and A(1) and A(0)) or
            (A(3) and A(2) and not A(1) and A(0));

    -- Segment g
    Y(0) <= (not A(3) and not A(2) and not A(1)) or
            (not A(3) and A(2) and A(1) and A(0)) or
            (A(3) and A(2) and not A(1) and not A(0));
end Behavioral;