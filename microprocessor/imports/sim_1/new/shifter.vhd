library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity shifter is
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
end shifter;
architecture Behavioral of shifter is

COMPONENT mux3to1
port ( In0 : in std_logic;
In1 : in std_logic;
In2:in std_logic;
S0 : in std_logic;
S1 : in std_logic;
Z : out std_logic);
END COMPONENT;
signal load_L0,load_L1,load_L2,load_L3,load_L4,load_L5,
load_L6,load_L7,load_L8,load_L9,load_L10,load_L11,
load_L12,load_L13,load_L14,load_L15,load_L16,load_L17,
load_L18,load_L19,load_L20,load_L21,load_L22,load_L23,load_L24,load_L25,
load_L26,load_L27,load_L28,load_L29,load_L30,load_L31:std_logic;

begin
mux00:mux3to1 PORT MAP(
    In0=>B0,
    In1=>load_L1,
    In2=>l0,
    S0=>S0,
    S1=>S1,
    Z=>H0
);
mux01:mux3to1 PORT MAP(
    In0=>B1,
    In1=>load_L2,
    In2=>load_L0,
    S0=>S0,
    S1=>S1,
    Z=>H1
);
mux02:mux3to1 PORT MAP(
    In0=>B2,
    In1=>load_L3,
    In2=>load_L1,
    S0=>S0,
    S1=>S1,
    Z=>H2
);
mux03:mux3to1 PORT MAP(
    In0=>B3,
    In1=>load_L4,
    In2=>load_L2,
    S0=>S0,
    S1=>S1,
    Z=>H3
);
mux04:mux3to1 PORT MAP(
    In0=>B4,
    In1=>load_L5,
    In2=>load_L3,
    S0=>S0,
    S1=>S1,
    Z=>H4
);
mux05:mux3to1 PORT MAP(
    In0=>B5,
    In1=>load_L6,
    In2=>load_L4,
    S0=>S0,
    S1=>S1,
    Z=>H5
);
mux06:mux3to1 PORT MAP(
    In0=>B6,
    In1=>load_L7,
    In2=>load_L5,
    S0=>S0,
    S1=>S1,
    Z=>H6
);
mux07:mux3to1 PORT MAP(
    In0=>B7,
    In1=>load_L8,
    In2=>load_L6,
    S0=>S0,
    S1=>S1,
    Z=>H7
);
mux08:mux3to1 PORT MAP(
    In0=>B8,
    In1=>load_L9,
    In2=>load_L7,
    S0=>S0,
    S1=>S1,
    Z=>H8
);
mux09:mux3to1 PORT MAP(
    In0=>B9,
    In1=>load_L10,
    In2=>load_L8,
    S0=>S0,
    S1=>S1,
    Z=>H9
);
mux10:mux3to1 PORT MAP(
    In0=>B10,
    In1=>load_L11,
    In2=>load_L9,
    S0=>S0,
    S1=>S1,
    Z=>H10
);

mux11:mux3to1 PORT MAP(
    In0=>B11,
    In1=>load_L12,
    In2=>load_L10,
    S0=>S0,
    S1=>S1,
    Z=>H11
);
mux12:mux3to1 PORT MAP(
    In0=>B12,
    In1=>load_L13,
    In2=>load_L11,
    S0=>S0,
    S1=>S1,
    Z=>H12
);
mux13:mux3to1 PORT MAP(
    In0=>B13,
    In1=>load_L14,
    In2=>load_L12,
    S0=>S0,
    S1=>S1,
    Z=>H13
);
mux14:mux3to1 PORT MAP(
    In0=>B14,
    In1=>load_L15,
    In2=>load_L13,
    S0=>S0,
    S1=>S1,
    Z=>H14
);
mux15:mux3to1 PORT MAP(
    In0=>B15,
    In1=>load_L16,
    In2=>load_L14,
    S0=>S0,
    S1=>S1,
    Z=>H15
);
mux16:mux3to1 PORT MAP(
    In0=>B16,
    In1=>load_L17,
    In2=>load_L15,
    S0=>S0,
    S1=>S1,
    Z=>H16
);
mux17:mux3to1 PORT MAP(
    In0=>B17,
    In1=>load_L18,
    In2=>load_L16,
    S0=>S0,
    S1=>S1,
    Z=>H17
);
mux18:mux3to1 PORT MAP(
    In0=>B18,
    In1=>load_L19,
    In2=>load_L17,
    S0=>S0,
    S1=>S1,
    Z=>H18
);
mux19:mux3to1 PORT MAP(
    In0=>B19,
    In1=>load_L20,
    In2=>load_L18,
    S0=>S0,
    S1=>S1,
    Z=>H19
);
mux20:mux3to1 PORT MAP(
    In0=>B20,
    In1=>load_L21,
    In2=>load_L19,
    S0=>S0,
    S1=>S1,
    Z=>H20
);
mux21:mux3to1 PORT MAP(
    In0=>B21,
    In1=>load_L22,
    In2=>load_L20,
    S0=>S0,
    S1=>S1,
    Z=>H21
);
mux22:mux3to1 PORT MAP(
    In0=>B22,
    In1=>load_L23,
    In2=>load_L21,
    S0=>S0,
    S1=>S1,
    Z=>H22
);
mux23:mux3to1 PORT MAP(
    In0=>B23,
    In1=>load_L24,
    In2=>load_L22,
    S0=>S0,
    S1=>S1,
    Z=>H23
);
mux24:mux3to1 PORT MAP(
    In0=>B24,
    In1=>load_L25,
    In2=>load_L23,
    S0=>S0,
    S1=>S1,
    Z=>H24
);
mux25:mux3to1 PORT MAP(
    In0=>B25,
    In1=>load_L26,
    In2=>load_L24,
    S0=>S0,
    S1=>S1,
    Z=>H25
);
mux26:mux3to1 PORT MAP(
    In0=>B26,
    In1=>load_L27,
    In2=>load_L25,
    S0=>S0,
    S1=>S1,
    Z=>H26
);
mux27:mux3to1 PORT MAP(
    In0=>B27,
    In1=>load_L28,
    In2=>load_L26,
    S0=>S0,
    S1=>S1,
    Z=>H27
);
mux28:mux3to1 PORT MAP(
    In0=>B28,
    In1=>load_L29,
    In2=>load_L27,
    S0=>S0,
    S1=>S1,
    Z=>H28
);
mux29:mux3to1 PORT MAP(
    In0=>B29,
    In1=>load_L30,
    In2=>load_L28,
    S0=>S0,
    S1=>S1,
    Z=>H29
);
mux30:mux3to1 PORT MAP(
    In0=>B30,
    In1=>load_L31,
    In2=>load_L29,
    S0=>S0,
    S1=>S1,
    Z=>H30
);
mux31:mux3to1 PORT MAP(
    In0=>B31,
    In1=>l31,
    In2=>load_L30,
    S0=>S0,
    S1=>S1,
    Z=>H31
);
load_L0<=B0;
load_L1<=B1;
load_L2<=B2;
load_L3<=B3;
load_L4<=B4;
load_L5<=B5;
load_L6<=B6;
load_L7<=B7;
load_L8<=B8;
load_L9<=B9;
load_L10<=B10;
load_L11<=B11;
load_L12<=B12;
load_L13<=B13;
load_L14<=B14;
load_L15<=B15;
load_L16<=B16;
load_L17<=B17;
load_L18<=B18;
load_L19<=B19;
load_L20<=B20;
load_L21<=B21;
load_L22<=B22;
load_L23<=B23;
load_L24<=B24;
load_L25<=B25;
load_L26<=B26;
load_L27<=B27;
load_L28<=B28;
load_L29<=B29;
load_L30<=B30;
load_L31<=B31;

end Behavioral;


