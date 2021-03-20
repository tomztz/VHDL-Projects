LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity flag_reset is
port ( V:in std_logic;
C:in std_logic;
N:in std_logic;
Z:in std_logic;
load_enable:in std_logic;
RV:in std_logic;
RC:in std_logic;
RN:in std_logic;
RZ:in std_logic;
Q : out std_logic_vector(3 downto 0));
end flag_reset;

architecture Behavioral of flag_reset is
begin

Q(0)<=  C after 5 ns when load_enable='1' and RC ='0' else '0' after 5ns;
Q(1)<= '0' after 5 ns when RV<='1' else V after 5 ns when load_enable<='1' else '0' after 5ns when load_enable<='0';
Q(2)<= '0' after 5 ns when RZ<='1' else Z after 5 ns when load_enable<='1' else '0' after 5ns when load_enable<='0';
Q(3)<= '0' after 5 ns when RN<='1' else N after 5 ns when load_enable<='1' else '0' after 5ns when load_enable<='0';

end Behavioral;

