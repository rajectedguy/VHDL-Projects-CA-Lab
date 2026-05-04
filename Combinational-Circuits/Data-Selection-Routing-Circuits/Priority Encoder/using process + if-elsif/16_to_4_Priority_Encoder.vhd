library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity priority_encoder_16to4 is
    Port (
        D : in STD_LOGIC_VECTOR(15 downto 0);
        Y : out STD_LOGIC_VECTOR(3 downto 0);
        V : out STD_LOGIC
    );
end priority_encoder_16to4;

architecture Behavioral of priority_encoder_16to4 is
begin
    process(D)
    begin
        if D(15) = '1' then
            Y <= "1111";
            V <= '1';
        elsif D(14) = '1' then
            Y <= "1110";
            V <= '1';
        elsif D(13) = '1' then
            Y <= "1101";
            V <= '1';
        elsif D(12) = '1' then
            Y <= "1100";
            V <= '1';
        elsif D(11) = '1' then
            Y <= "1011";
            V <= '1';
        elsif D(10) = '1' then
            Y <= "1010";
            V <= '1';
        elsif D(9) = '1' then
            Y <= "1001";
            V <= '1';
        elsif D(8) = '1' then
            Y <= "1000";
            V <= '1';
        elsif D(7) = '1' then
            Y <= "0111";
            V <= '1';
        elsif D(6) = '1' then
            Y <= "0110";
            V <= '1';
        elsif D(5) = '1' then
            Y <= "0101";
            V <= '1';
        elsif D(4) = '1' then
            Y <= "0100";
            V <= '1';
        elsif D(3) = '1' then
            Y <= "0011";
            V <= '1';
        elsif D(2) = '1' then
            Y <= "0010";
            V <= '1';
        elsif D(1) = '1' then
            Y <= "0001";
            V <= '1';
        elsif D(0) = '1' then
            Y <= "0000";
            V <= '1';
        else
            Y <= "0000";
            V <= '0';
        end if;
    end process;
end Behavioral;