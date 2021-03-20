library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ripple_carry_adder is
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
end ripple_carry_adder;

architecture Behavioral of ripple_carry_adder is
 COMPONENT full_adder
    Port (in1, in2, c_in:in std_logic;
sum, c_out:out std_logic );
END COMPONENT;
   
    signal load_c1,load_c2,load_c3,load_c4,load_c5,load_c6,load_c7,load_c8,
    load_c9,load_c10,load_c11,load_c12,load_c13,load_c14,load_c15,load_c16,load_c17,
    load_c18,load_c19,load_c20,load_c21,load_c22,load_c23,load_c24,load_c25,
    load_c26,load_c27,load_c28,load_c29,load_c30,load_c31:std_logic;

begin
adder00:full_adder PORT MAP(
    in1=>x0,
    in2=>y0,
    c_in=>c0,
    sum=>s0,
    c_out=>load_c1

);
adder01:full_adder PORT MAP(
    in1=>x1,
    in2=>y1,
    c_in=>load_c1,
    sum=>s1,
    c_out=>load_c2
);
adder02:full_adder PORT MAP(
    in1=>x2,
    in2=>y2,
    c_in=>load_c2,
    sum=>s2,
    c_out=>load_c3

);
adder03:full_adder PORT MAP(
    in1=>x3,
    in2=>y3,
    c_in=>load_c3,
    sum=>s3,
    c_out=>load_c4

);
adder04:full_adder PORT MAP(
    in1=>x4,
    in2=>y4,
    c_in=>load_c4,
    sum=>s4,
    c_out=>load_c5

);
adder05:full_adder PORT MAP(
    in1=>x5,
    in2=>y5,
    c_in=>load_c5,
    sum=>s5,
    c_out=>load_c6

);
adder06:full_adder PORT MAP(
    in1=>x6,
    in2=>y6,
    c_in=>load_c6,
    sum=>s6,
    c_out=>load_c7

);
adder07:full_adder PORT MAP(
    in1=>x7,
    in2=>y7,
    c_in=>load_c7,
    sum=>s7,
    c_out=>load_c8

);
adder08:full_adder PORT MAP(
    in1=>x8,
    in2=>y8,
    c_in=>load_c8,
    sum=>s8,
    c_out=>load_c9

);
adder09:full_adder PORT MAP(
    in1=>x9,
    in2=>y9,
    c_in=>load_c9,
    sum=>s9,
    c_out=>load_c10

);
adder10:full_adder PORT MAP(
    in1=>x10,
    in2=>y10,
    c_in=>load_c10,
    sum=>s10,
    c_out=>load_c11
);
adder11:full_adder PORT MAP(
    in1=>x11,
    in2=>y11,
    c_in=>load_c11,
    sum=>s11,
    c_out=>load_c12
);
adder12:full_adder PORT MAP(
   in1=>x12,
    in2=>y12,
    c_in=>load_c12,
    sum=>s12,
    c_out=>load_c13
);
adder13:full_adder PORT MAP(
   in1=>x13,
    in2=>y13,
    c_in=>load_c13,
    sum=>s13,
    c_out=>load_c14
);


adder14:full_adder PORT MAP(
   in1=>x14,
    in2=>y14,
    c_in=>load_c14,
    sum=>s14,
    c_out=>load_c15
);
adder15:full_adder PORT MAP(
   in1=>x15,
    in2=>y15,
    c_in=>load_c15,
    sum=>s15,
    c_out=>load_c16
);
adder16:full_adder PORT MAP(
   in1=>x16,
    in2=>y16,
    c_in=>load_c16,
    sum=>s16,
    c_out=>load_c17
);
adder17:full_adder PORT MAP(
   in1=>x17,
    in2=>y17,
    c_in=>load_c17,
    sum=>s17,
    c_out=>load_c18
);
adder18:full_adder PORT MAP(
   in1=>x18,
    in2=>y18,
    c_in=>load_c18,
    sum=>s18,
    c_out=>load_c19
);
adder19:full_adder PORT MAP(
   in1=>x19,
    in2=>y19,
    c_in=>load_c19,
    sum=>s19,
    c_out=>load_c20
);
adder20:full_adder PORT MAP(
   in1=>x20,
    in2=>y20,
    c_in=>load_c20,
    sum=>s20,
    c_out=>load_c21
);
adder21:full_adder PORT MAP(
   in1=>x21,
    in2=>y21,
    c_in=>load_c21,
    sum=>s21,
    c_out=>load_c22
);
adder22:full_adder PORT MAP(
   in1=>x22,
    in2=>y22,
    c_in=>load_c22,
    sum=>s22,
    c_out=>load_c23
);
adder23:full_adder PORT MAP(
   in1=>x23,
    in2=>y23,
    c_in=>load_c23,
    sum=>s23,
    c_out=>load_c24
);
adder24:full_adder PORT MAP(
   in1=>x24,
    in2=>y24,
    c_in=>load_c24,
    sum=>s24,
    c_out=>load_c25
);
adder25:full_adder PORT MAP(
   in1=>x25,
    in2=>y25,
    c_in=>load_c25,
    sum=>s25,
    c_out=>load_c26
);
adder26:full_adder PORT MAP(
   in1=>x26,
    in2=>y26,
    c_in=>load_c26,
    sum=>s26,
    c_out=>load_c27
);
adder27:full_adder PORT MAP(
   in1=>x27,
    in2=>y27,
    c_in=>load_c27,
    sum=>s27,
    c_out=>load_c28
);
adder28:full_adder PORT MAP(
   in1=>x28,
    in2=>y28,
    c_in=>load_c28,
    sum=>s28,
    c_out=>load_c29
);

adder29:full_adder PORT MAP(
   in1=>x29,
    in2=>y29,
    c_in=>load_c29,
    sum=>s29,
    c_out=>load_c30
);
adder30:full_adder PORT MAP(
   in1=>x30,
    in2=>y30,
    c_in=>load_c30,
    sum=>s30,
    c_out=>load_c31
);
adder31:full_adder PORT MAP(
   in1=>x31,
    in2=>y31,
    c_in=>load_c31,
    sum=>s31,
    c_out=>c31
);



end Behavioral;
