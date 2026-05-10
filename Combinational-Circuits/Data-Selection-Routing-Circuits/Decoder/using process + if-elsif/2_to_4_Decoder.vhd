library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_2to4 is
    Port (
        A : in STD_LOGIC_VECTOR(1 downto 0);
        Y : out STD_LOGIC_VECTOR(3 downto 0)
    );
end decoder_2to4;

architecture Behavioral of decoder_2to4 is
begin
    process(A)
    begin
        Y <= (others => '0');

        if A = "00" then
            Y(0) <= '1';
        elsif A = "01" then
            Y(1) <= '1';
        elsif A = "10" then
            Y(2) <= '1';
        elsif A = "11" then
            Y(3) <= '1';
        end if;
    end process;
end Behavioral;