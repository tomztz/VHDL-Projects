library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity mux3to1 is
Port ( In0, In1, In2: in std_logic;
S0, S1 : in std_logic;
Z : out std_logic);
end mux3to1;
architecture Behavioral of mux3to1 is
begin
Z <= In0 after 5 ns when S0='0' and S1='0' else
In1 after 5 ns when S0='1' and S1='0' else
In2 after 5 ns when S0='0' and S1='1' else
'0' after 5 ns;
end Behavioral;
