library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity priority_encoder_4to2 is
    Port (
        D : in STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(1 downto 0);
        V : out STD_LOGIC
    );
end priority_encoder_4to2;

architecture Behavioral of priority_encoder_4to2 is
begin
    process(D)
    begin
        if D(3) = '1' then
            Y <= "11";
            V <= '1';
        elsif D(2) = '1' then
            Y <= "10";
            V <= '1';
        elsif D(1) = '1' then
            Y <= "01";
            V <= '1';
        elsif D(0) = '1' then
            Y <= "00";
            V <= '1';
        else
            Y <= "00";
            V <= '0';
        end if;
    end process;
end Behavioral;