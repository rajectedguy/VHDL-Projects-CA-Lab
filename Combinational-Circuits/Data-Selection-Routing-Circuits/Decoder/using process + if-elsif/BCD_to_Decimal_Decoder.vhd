library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_to_decimal_decoder is
    Port (
        A : in STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(9 downto 0)
    );
end bcd_to_decimal_decoder;

architecture Behavioral of bcd_to_decimal_decoder is
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
        end if;
    end process;
end Behavioral;