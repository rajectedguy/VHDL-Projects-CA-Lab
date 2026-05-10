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
    process(A)
    begin
        Y <= (others => '0');

        if A = "00000" then
            Y(0) <= '1';
        elsif A = "00001" then
            Y(1) <= '1';
        elsif A = "00010" then
            Y(2) <= '1';
        elsif A = "00011" then
            Y(3) <= '1';
        elsif A = "00100" then
            Y(4) <= '1';
        elsif A = "00101" then
            Y(5) <= '1';
        elsif A = "00110" then
            Y(6) <= '1';
        elsif A = "00111" then
            Y(7) <= '1';
        elsif A = "01000" then
            Y(8) <= '1';
        elsif A = "01001" then
            Y(9) <= '1';
        elsif A = "01010" then
            Y(10) <= '1';
        elsif A = "01011" then
            Y(11) <= '1';
        elsif A = "01100" then
            Y(12) <= '1';
        elsif A = "01101" then
            Y(13) <= '1';
        elsif A = "01110" then
            Y(14) <= '1';
        elsif A = "01111" then
            Y(15) <= '1';
        elsif A = "10000" then
            Y(16) <= '1';
        elsif A = "10001" then
            Y(17) <= '1';
        elsif A = "10010" then
            Y(18) <= '1';
        elsif A = "10011" then
            Y(19) <= '1';
        elsif A = "10100" then
            Y(20) <= '1';
        elsif A = "10101" then
            Y(21) <= '1';
        elsif A = "10110" then
            Y(22) <= '1';
        elsif A = "10111" then
            Y(23) <= '1';
        elsif A = "11000" then
            Y(24) <= '1';
        elsif A = "11001" then
            Y(25) <= '1';
        elsif A = "11010" then
            Y(26) <= '1';
        elsif A = "11011" then
            Y(27) <= '1';
        elsif A = "11100" then
            Y(28) <= '1';
        elsif A = "11101" then
            Y(29) <= '1';
        elsif A = "11110" then
            Y(30) <= '1';
        elsif A = "11111" then
            Y(31) <= '1';
        end if;
    end process;
end Behavioral;