library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
    Port ( Extend : in  STD_LOGIC_VECTOR (31 downto 0);
			  reset : in STD_LOGIC;
			  Clk : in STD_LOGIC;
           PL : in  STD_LOGIC;
           PI : in  STD_LOGIC;
           PC_out : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is

	COMPONENT ripple_carry_adder
	
	 PORT(
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
	
	 
	COMPONENT reg32
	port ( D : in std_logic_vector(31 downto 0);
load, Clk : in std_logic;
Q : out std_logic_vector(31 downto 0));
	END COMPONENT;
	
	
signal pi_or_pl_or_reset : std_logic;
signal load_result : std_logic_vector(31 downto 0);
signal increment_result : std_logic_vector(31 downto 0);
signal next_PC : std_logic_vector (31 downto 0);
signal last_PC : std_logic_vector (31 downto 0);

begin


adderLoad: ripple_carry_adder PORT MAP(
	x0=>last_pc(0),
x1=>last_pc(1),
x2=>last_pc(2),
x3=>last_pc(3),
x4=>last_pc(4),
x5=>last_pc(5),
x6=>last_pc(6),
x7=>last_pc(7),
x8=>last_pc(8),
x9=>last_pc(9),
x10=>last_pc(10),
x11=>last_pc(11),
x12=>last_pc(12),
x13=>last_pc(13),
x14=>last_pc(14),
x15=>last_pc(15),
x16=>last_pc(16),
x17=>last_pc(17),
x18=>last_pc(18),
x19=>last_pc(19),
x20=>last_pc(20),
x21=>last_pc(21),
x22=>last_pc(22),
x23=>last_pc(23),
x24=>last_pc(24),
x25=>last_pc(25),
x26=>last_pc(26),
x27=>last_pc(27),
x28=>last_pc(28),
x29=>last_pc(29),
x30=>last_pc(30),
x31=>last_pc(31),

y0=>Extend(0),
y1=>Extend(1),
y2=>Extend(2),
y3=>Extend(3),
y4=>Extend(4),
y5=>Extend(5),
y6=>Extend(6),
y7=>Extend(7),
y8=>Extend(8),
y9=>Extend(9),
y10=>Extend(10),
y11=>Extend(11),
y12=>Extend(12),
y13=>Extend(13),
y14=>Extend(14),
y15=>Extend(15),
y16=>Extend(16),
y17=>Extend(17),
y18=>Extend(18),
y19=>Extend(19),
y20=>Extend(20),
y21=>Extend(21),
y22=>Extend(22),
y23=>Extend(23),
y24=>Extend(24),
y25=>Extend(25),
y26=>Extend(26),
y27=>Extend(27),
y28=>Extend(28),
y29=>Extend(29),
y30=>Extend(30),
y31=>Extend(31),

	C0 => '0', 
	s0=>load_result(0),
s1=>load_result(1),
s2=>load_result(2),
s3=>load_result(3),
s4=>load_result(4),
s5=>load_result(5),
s6=>load_result(6),
s7=>load_result(7),
s8=>load_result(8),
s9=>load_result(9),
s10=>load_result(10),
s11=>load_result(11),
s12=>load_result(12),
s13=>load_result(13),
s14=>load_result(14),
s15=>load_result(15),
s16=>load_result(16),
s17=>load_result(17),
s18=>load_result(18),
s19=>load_result(19),
s20=>load_result(20),
s21=>load_result(21),
s22=>load_result(22),
s23=>load_result(23),
s24=>load_result(24),
s25=>load_result(25),
s26=>load_result(26),
s27=>load_result(27),
s28=>load_result(28),
s29=>load_result(29),
s30=>load_result(30),
s31=>load_result(31)
);


adderIncrement: ripple_carry_adder PORT MAP(
	x0=>last_PC(0),
x1=>last_PC(1),
x2=>last_PC(2),
x3=>last_PC(3),
x4=>last_PC(4),
x5=>last_PC(5),
x6=>last_PC(6),
x7=>last_PC(7),
x8=>last_PC(8),
x9=>last_PC(9),
x10=>last_PC(10),
x11=>last_PC(11),
x12=>last_PC(12),
x13=>last_PC(13),
x14=>last_PC(14),
x15=>last_PC(15),
x16=>last_PC(16),
x17=>last_PC(17),
x18=>last_PC(18),
x19=>last_PC(19),
x20=>last_PC(20),
x21=>last_PC(21),
x22=>last_PC(22),
x23=>last_PC(23),
x24=>last_PC(24),
x25=>last_PC(25),
x26=>last_PC(26),
x27=>last_PC(27),
x28=>last_PC(28),
x29=>last_PC(29),
x30=>last_PC(30),
x31=>last_PC(31),
	y0=>'0',
y1=>'0',
y2=>'0',
y3=>'0',
y4=>'0',
y5=>'0',
y6=>'0',
y7=>'0',
y8=>'0',
y9=>'0',
y10=>'0',
y11=>'0',
y12=>'0',
y13=>'0',
y14=>'0',
y15=>'0',
y16=>'0',
y17=>'0',
y18=>'0',
y19=>'0',
y20=>'0',
y21=>'0',
y22=>'0',
y23=>'0',
y24=>'0',
y25=>'0',
y26=>'0',
y27=>'0',
y28=>'0',
y29=>'0',
y30=>'0',
y31=>'0',
	C0 => '1', 
	s0=>increment_result(0),
s1=>increment_result(1),
s2=>increment_result(2),
s3=>increment_result(3),
s4=>increment_result(4),
s5=>increment_result(5),
s6=>increment_result(6),
s7=>increment_result(7),
s8=>increment_result(8),
s9=>increment_result(9),
s10=>increment_result(10),
s11=>increment_result(11),
s12=>increment_result(12),
s13=>increment_result(13),
s14=>increment_result(14),
s15=>increment_result(15),
s16=>increment_result(16),
s17=>increment_result(17),
s18=>increment_result(18),
s19=>increment_result(19),
s20=>increment_result(20),
s21=>increment_result(21),
s22=>increment_result(22),
s23=>increment_result(23),
s24=>increment_result(24),
s25=>increment_result(25),
s26=>increment_result(26),
s27=>increment_result(27),
s28=>increment_result(28),
s29=>increment_result(29),
s30=>increment_result(30),
s31=>increment_result(31)
);

-- register
reg: reg32 PORT MAP(
	D => next_PC,
	load => pi_or_pl_or_reset,
	Clk => Clk,
	Q => last_PC
);

	next_PC <= x"00000000" when reset='1' else increment_result when PI='1' else
					load_result when PL='1' else last_PC;
	PC_out <= last_PC;
	pi_or_pl_or_reset <= (PI or PL or reset);
	
end Behavioral;
