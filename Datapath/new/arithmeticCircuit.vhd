library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity arithmeticCircuit is
    Port(
    a_in, b_in: in std_logic_vector(31 downto 0);
    s0, s1, c_in: in std_logic;
    output: out std_logic_vector(31 downto 0);
    c_out: out std_logic
    );
end arithmeticCircuit;
architecture Behavioral of arithmeticCircuit is
COMPONENT mux_2to1
port ( In0 : in std_logic;
In1 : in std_logic;
s : in std_logic;
Z : out std_logic);
END COMPONENT;

COMPONENT ripple_carry_adder
Port(
    x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,
    x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31:in std_logic;
    y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17,y18,
    y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,y31:in std_logic;
    s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,
    s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31:out std_logic;
    c0:in std_logic;
    c31:out std_logic
);
END COMPONENT;
signal load_i0,load_i1,load_i2,load_i3,load_i4,load_i5,load_i6,load_i7,
load_i8,load_i9,load_i10,load_i11,load_i12,load_i13,load_i14,load_i15,
load_i16,load_i17,load_i18,load_i19,load_i20,load_i21,load_i22,load_i23,
load_i24,load_i25,load_i26,load_i27,load_i28,load_i29,load_i30,load_i31:std_logic:='0';

begin
mux00:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(0),
    Z=>load_i0

);
mux01:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(1),
    Z=>load_i1
);
mux02:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(2),
    Z=>load_i2
);
mux03:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(3),
    Z=>load_i3
);
mux04:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(4),
    Z=>load_i4
);
mux05:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(5),
    Z=>load_i5
);
mux06:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(6),
    Z=>load_i6
);
mux07:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(7),
    Z=>load_i7
);
mux08:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(8),
    Z=>load_i8
);
mux09:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(9),
    Z=>load_i9
);
mux10:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(10),
    Z=>load_i10
);
mux11:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(11),
    Z=>load_i11
);
mux12:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(12),
    Z=>load_i12
);
mux13:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(13),
    Z=>load_i13
);
mux14:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(14),
    Z=>load_i14
);
mux15:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(15),
    Z=>load_i15
);
mux16:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(16),
    Z=>load_i16
);
mux17:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(17),
    Z=>load_i17
);
mux18:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(18),
    Z=>load_i18
);
mux19:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(19),
    Z=>load_i19
);
mux20:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(20),
    Z=>load_i20
);
mux21:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(21),
    Z=>load_i21
);
mux22:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(22),
    Z=>load_i22
);
mux23:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(23),
    Z=>load_i23
);
mux24:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(24),
    Z=>load_i24
);
mux25:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(25),
    Z=>load_i25
);
mux26:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(26),
    Z=>load_i26
);
mux27:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(27),
    Z=>load_i27
);
mux28:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(28),
    Z=>load_i28
);
mux29:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(29),
    Z=>load_i29
);
mux30:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(30),
    Z=>load_i30
);
mux31:mux_2to1 PORT MAP(
    In0=>s0,
    In1=>s1,
    s=>b_in(31),
    Z=>load_i31
);
ribble_adder:ripple_carry_adder PORT MAP(
c0=>c_in,
c31=>c_out,

x0=>a_in(0),
x1=>a_in(1),
x2=>a_in(2),
x3=>a_in(3),
x4=>a_in(4),
x5=>a_in(5),
x6=>a_in(6),
x7=>a_in(7),
x8=>a_in(8),
x9=>a_in(9),
x10=>a_in(10),
x11=>a_in(11),
x12=>a_in(12),
x13=>a_in(13),
x14=>a_in(14),
x15=>a_in(15),
x16=>a_in(16),
x17=>a_in(17),
x18=>a_in(18),
x19=>a_in(19),
x20=>a_in(20),
x21=>a_in(21),
x22=>a_in(22),
x23=>a_in(23),
x24=>a_in(24),
x25=>a_in(25),
x26=>a_in(26),
x27=>a_in(27),
x28=>a_in(28),
x29=>a_in(29),
x30=>a_in(30),
x31=>a_in(31),

    y0=>load_i0,
y1=>load_i1,
y2=>load_i2,
y3=>load_i3,
y4=>load_i4,
y5=>load_i5,
y6=>load_i6,
y7=>load_i7,
y8=>load_i8,
y9=>load_i9,
y10=>load_i10,
y11=>load_i11,
y12=>load_i12,
y13=>load_i13,
y14=>load_i14,
y15=>load_i15,
y16=>load_i16,
y17=>load_i17,
y18=>load_i18,
y19=>load_i19,
y20=>load_i20,
y21=>load_i21,
y22=>load_i22,
y23=>load_i23,
y24=>load_i24,
y25=>load_i25,
y26=>load_i26,
y27=>load_i27,
y28=>load_i28,
y29=>load_i29,
y30=>load_i30,
y31=>load_i31,

s0=>output(0),
s1=>output(1),
s2=>output(2),
s3=>output(3),
s4=>output(4),
s5=>output(5),
s6=>output(6),
s7=>output(7),
s8=>output(8),
s9=>output(9),
s10=>output(10),
s11=>output(11),
s12=>output(12),
s13=>output(13),
s14=>output(14),
s15=>output(15),
s16=>output(16),
s17=>output(17),
s18=>output(18),
s19=>output(19),
s20=>output(20),
s21=>output(21),
s22=>output(22),
s23=>output(23),
s24=>output(24),
s25=>output(25),
s26=>output(26),
s27=>output(27),
s28=>output(28),
s29=>output(29),
s30=>output(30),
s31=>output(31)    
    
);
end Behavioral;