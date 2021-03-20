
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Datapath is
PORT(
Clk:in std_logic;
data_in:in std_logic_vector(31 downto 0);
const_in:in std_logic_vector(31 downto 0);
ctrl:in std_logic_vector(22 downto 0);
V:out std_logic;
C:out std_logic;
N:out std_logic;
Z:out std_logic;
address_out:out std_logic_vector(31 downto 0);
data_out:out std_logic_vector(31 downto 0)
);

end Datapath;

architecture Behavioral of Datapath is
COMPONENT register_file
Port ( 
des_select:in std_logic_vector(4 downto 0);
A_select:in std_logic_vector(4 downto 0);
B_select:in std_logic_vector(4 downto 0);
load_enable: in std_logic;
Data_address:in std_logic_vector(31 downto 0);
A_Data,B_Data:out std_logic_vector(31 downto 0);
Clk : in std_logic
);
END COMPONENT;
COMPONENT function_unit
Port (A,B:in std_logic_vector(31 downto 0);
FS:in std_logic_vector(6 downto 2);

 C:out std_logic;
    V:out std_logic;
    N:out std_logic;
    Z:out std_logic;
    F:out std_logic_vector(31 downto 0)
    );
END COMPONENT;
COMPONENT  mux2_32bit
port ( In0 : in std_logic_vector(31 downto 0);
In1 : in std_logic_vector(31 downto 0);
s : in std_logic;
Z : out std_logic_vector(31 downto 0));
END COMPONENT;

signal load_A,load_B0,load_B1,load_F,load_data_address:std_logic_vector(31 downto 0):=(others => '0');
begin
functionUnit:function_unit PORT MAP(
    A=>load_A,
    B=>load_B1,
    fs=>ctrl(6 downto 2),
    C=>C,
    V=>V,
    N=>N,
    Z=>Z,
    F=>load_F

);
registerFile:register_file PORT MAP(
    des_select=>ctrl(22 downto 18),
    A_select=>ctrl(17 downto 13),
    B_select=>ctrl(12 downto 8),
    load_enable=>ctrl(0),
    Data_address=>load_data_address,
    clk=>clk,
    A_data=>load_A,
    B_data=>load_B0
);
muxB:mux2_32bit PORT MAP(
    In0=>load_B0,
    In1=>const_in,
    S=>ctrl(7),
    Z=>load_B1

);
muxD:mux2_32bit PORT MAP(
    In0=>load_F,
    In1=>data_in,
    S=>ctrl(1),
    Z=>load_data_address

);
data_out<=load_B1;
address_out<=load_A;  
end Behavioral;
