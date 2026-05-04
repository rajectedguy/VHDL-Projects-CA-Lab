library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity priority_encoder_8to3 is
    Port (
        D : in STD_LOGIC_VECTOR(7 downto 0);
        Y : out STD_LOGIC_VECTOR(2 downto 0);
        V : out STD_LOGIC
    );
end priority_encoder_8to3;

architecture Behavioral of priority_encoder_8to3 is
begin
    process(D)
    begin
        if D(7) = '1' then
            Y <= "111";
            V <= '1';
        elsif D(6) = '1' then
            Y <= "110";
            V <= '1';
        elsif D(5) = '1' then
            Y <= "101";
            V <= '1';
        elsif D(4) = '1' then
            Y <= "100";
            V <= '1';
        elsif D(3) = '1' then
            Y <= "011";
            V <= '1';
        elsif D(2) = '1' then
            Y <= "010";
            V <= '1';
        elsif D(1) = '1' then
            Y <= "001";
            V <= '1';
        elsif D(0) = '1' then
            Y <= "000";
            V <= '1';
        else
            Y <= "000";
            V <= '0';
        end if;
    end process;
end Behavioral;