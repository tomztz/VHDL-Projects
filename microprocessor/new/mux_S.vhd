library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_S is
    Port ( N:in  STD_LOGIC;
           C:in  STD_LOGIC;
           V:in  STD_LOGIC;
           Z:in  STD_LOGIC;
           NOTC: in STD_LOGIC;
           NOTZ: in STD_LOGIC;
           one:in STD_LOGIC;
           zero: in STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           line_out : out  STD_LOGIC);
end mux_S;

architecture Behavioral of mux_S is

begin
line_out <= zero when (S2='0' and S1='0' and S0='0') else
one when (S2='0' and S1='0' and S0='1') else
C when (S2='0' and S1='1' and S0='0') else
V when (S2='0' and S1='1' and S0='1') else
Z when (S2='1' and S1='0' and S0='0') else
N when (S2='1' and S1='0' and S0='1') else
NOTC when (S2='1' and S1='1' and S0='0') else
NOTZ when (S2='1' and S1='1' and S0='1') else '0';

end Behavioral;