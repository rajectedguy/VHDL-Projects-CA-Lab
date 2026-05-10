library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity binary_decoder_4to16 is
    Port (
        A : in STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(15 downto 0)
    );
end binary_decoder_4to16;

architecture Behavioral of binary_decoder_4to16 is
begin
    process(A)
    begin
        Y <= (others => '0');

        if A = "0000" then
            Y(0) <= '1';
        elsif A = "0001" then
            Y(1) <= '1';
        elsif A = "0010" then
            Y(2) <= '1';
        elsif A = "0011" then
            Y(3) <= '1';
        elsif A = "0100" then
            Y(4) <= '1';
        elsif A = "0101" then
            Y(5) <= '1';
        elsif A = "0110" then
            Y(6) <= '1';
        elsif A = "0111" then
            Y(7) <= '1';
        elsif A = "1000" then
            Y(8) <= '1';
        elsif A = "1001" then
            Y(9) <= '1';
        elsif A = "1010" then
            Y(10) <= '1';
        elsif A = "1011" then
            Y(11) <= '1';
        elsif A = "1100" then
            Y(12) <= '1';
        elsif A = "1101" then
            Y(13) <= '1';
        elsif A = "1110" then
            Y(14) <= '1';
        elsif A = "1111" then
            Y(15) <= '1';
        end if;
    end process;
end Behavioral;