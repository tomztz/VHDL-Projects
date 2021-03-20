library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity function_unit is
Port (A,B:in std_logic_vector(31 downto 0);
FS:in std_logic_vector(6 downto 2);

 C:out std_logic;
    V:out std_logic;
    N:out std_logic;
    Z:out std_logic;
    F:out std_logic_vector(31 downto 0)
    );
end function_unit;
architecture Behavioral of function_unit is
COMPONENT ALU
Port(
    A, B: in std_logic_vector(31 downto 0);
    s0, s1: in std_logic;
    c_in:in std_logic;
    s2: in std_logic;
    c_out:out std_logic;
    V:out std_logic;
    N:out std_logic;
    Z:out std_logic;
    G: out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
 COMPONENT shifter
 Port (B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,
B12,B13,B14,B15,B16,B17,B18,
B19,B20,B21,B22,B23,B24,B25,B26,
B27,B28,B29,B30,B31:in std_logic;
S0,S1:std_logic;
l0:in std_logic;
l31:in std_logic;
H0,H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,
H12,H13,H14,H15,H16,H17,H18,H19,H20,H21,
H22,H23,H24,H25,H26,H27,H28,H29,H30,H31:out std_logic ); 
END COMPONENT;
 COMPONENT mux2_32bit
 port ( In0 : in std_logic_vector(31 downto 0);
In1 : in std_logic_vector(31 downto 0);
s : in std_logic;
Z : out std_logic_vector(31 downto 0));
END COMPONENT;

signal load_In0,load_In1:std_logic_vector(31 downto 0):= (others => '0');

begin
ALU1:ALU PORT MAP(
    A=>A,
    B=>B,
    c_in=>FS(2),
    S0=>FS(3),
    S1=>FS(4),
    S2=>FS(5),
    V=>V,
    N=>N,
    Z=>Z,
    c_out=>C,
    G=>load_In0
);
shifter1:shifter PORT MAP(
B0=>B(0),
B1=>B(1),
B2=>B(2),
B3=>B(3),
B4=>B(4),
B5=>B(5),
B6=>B(6),
B7=>B(7),
B8=>B(8),
B9=>B(9),
B10=>B(10),
B11=>B(11),
B12=>B(12),
B13=>B(13),
B14=>B(14),
B15=>B(15),
B16=>B(16),
B17=>B(17),
B18=>B(18),
B19=>B(19),
B20=>B(20),
B21=>B(21),
B22=>B(22),
B23=>B(23),
B24=>B(24),
B25=>B(25),
B26=>B(26),
B27=>B(27),
B28=>B(28),
B29=>B(29),
B30=>B(30),
B31=>B(31),

s0=>FS(3),
S1=>FS(4),

l0=>'0',
l31=>'0',
H0=>load_In1(0),
H1=>load_In1(1),
H2=>load_In1(2),
H3=>load_In1(3),
H4=>load_In1(4),
H5=>load_In1(5),
H6=>load_In1(6),
H7=>load_In1(7),
H8=>load_In1(8),
H9=>load_In1(9),
H10=>load_In1(10),
H11=>load_In1(11),
H12=>load_In1(12),
H13=>load_In1(13),
H14=>load_In1(14),
H15=>load_In1(15),
H16=>load_In1(16),
H17=>load_In1(17),
H18=>load_In1(18),
H19=>load_In1(19),
H20=>load_In1(20),
H21=>load_In1(21),
H22=>load_In1(22),
H23=>load_In1(23),
H24=>load_In1(24),
H25=>load_In1(25),
H26=>load_In1(26),
H27=>load_In1(27),
H28=>load_In1(28),
H29=>load_In1(29),
H30=>load_In1(30),
H31=>load_In1(31)

);
mux:mux2_32bit PORT MAP(
In0=>load_In0,
In1=>load_In1,
S=>FS(6),
Z=>F

);
end Behavioral;
