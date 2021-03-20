library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity mux_C is
port ( In0 : in std_logic_vector(16 downto 0);
In1 : in std_logic_vector(16 downto 0);
MC : in std_logic;
Z : out std_logic_vector(16 downto 0));
end mux_C;
architecture Behavioral of mux_C is
begin
Z <= In0 after 5 ns when MC='0' else
In1 after 5 ns when MC='1'else
"00000000000000000" after 5 ns;
end Behavioral;

