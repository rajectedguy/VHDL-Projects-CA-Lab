library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_3to8 is
    Port (
        A : in STD_LOGIC_VECTOR(2 downto 0);
        Y : out STD_LOGIC_VECTOR(7 downto 0)
    );
end decoder_3to8;

architecture Behavioral of decoder_3to8 is
begin
    process(A)
    begin
        Y <= (others => '0');

        if A = "000" then
            Y(0) <= '1';
        elsif A = "001" then
            Y(1) <= '1';
        elsif A = "010" then
            Y(2) <= '1';
        elsif A = "011" then
            Y(3) <= '1';
        elsif A = "100" then
            Y(4) <= '1';
        elsif A = "101" then
            Y(5) <= '1';
        elsif A = "110" then
            Y(6) <= '1';
        elsif A = "111" then
            Y(7) <= '1';
        end if;
    end process;
end Behavioral;