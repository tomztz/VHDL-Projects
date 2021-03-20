library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zero_fill is
    Port ( SB : in  STD_LOGIC_VECTOR (4 downto 0);
	 constant_out : out STD_LOGIC_VECTOR (31 downto 0));
end zero_fill;

architecture Behavioral of zero_fill is

begin
constant_out(4 downto 0) <= SB;
constant_out(31 downto 5) <= "000000000000000000000000000";
end Behavioral;
