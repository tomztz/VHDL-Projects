library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CAR is
    Port ( data_in : in  STD_LOGIC_VECTOR (16 downto 0);  
           S : in  STD_LOGIC;
           reset : in STD_LOGIC;
           Clk : in STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (16 downto 0));
end CAR;


architecture Behavioral of CAR is

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
	
	-- 32 bit Register 
	COMPONENT reg32
	port ( D : in std_logic_vector(31 downto 0);
load, Clk : in std_logic;
Q : out std_logic_vector(31 downto 0));

	END COMPONENT;
	
signal increment : std_logic_vector(16 downto 0);
signal unused : std_logic_vector (14 downto 0);
signal current_val : std_logic_vector (31 downto 0);
signal into_reg : std_logic_vector (31 downto 0);

begin

	-- ripple_adder_32bits
	adder: ripple_carry_adder PORT MAP(
		x0=>current_val(0),
x1=>current_val(1),
x2=>current_val(2),
x3=>current_val(3),
x4=>current_val(4),
x5=>current_val(5),
x6=>current_val(6),
x7=>current_val(7),
x8=>current_val(8),
x9=>current_val(9),
x10=>current_val(10),
x11=>current_val(11),
x12=>current_val(12),
x13=>current_val(13),
x14=>current_val(14),
x15=>current_val(15),
x16=>current_val(16),
x17=>'0',
x18=>'0',
x19=>'0',
x20=>'0',
x21=>'0',
x22=>'0',
x23=>'0',
x24=>'0',
x25=>'0',
x26=>'0',
x27=>'0',
x28=>'0',
x29=>'0',
x30=>'0',
x31=>'0',

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

c0=>'1',

s0=>increment(0),
s1=>increment(1),
s2=>increment(2),
s3=>increment(3),
s4=>increment(4),
s5=>increment(5),
s6=>increment(6),
s7=>increment(7),
s8=>increment(8),
s9=>increment(9),
s10=>increment(10),
s11=>increment(11),
s12=>increment(12),
s13=>increment(13),
s14=>increment(14),
s15=>increment(15),
s16=>increment(16),
s17=>unused(0),
s18=>unused(1),
s19=>unused(2),
s20=>unused(3),
s21=>unused(4),
s22=>unused(5),
s23=>unused(6),
s24=>unused(7),
s25=>unused(8),
s26=>unused(9),
s27=>unused(10),
s28=>unused(11),
s29=>unused(12),
s30=>unused(13),
s31=>unused(14)
	);

	-- register
		reg: reg32 PORT MAP(
			D => into_reg,
			load => '1',
			Clk => Clk,
			Q => current_val
		);
		

into_reg(16 downto 0) <= "00000000000000000"when reset='1' else data_in when S = '1' else increment;
into_reg(31 downto 17) <="000000000000000";
data_out <= current_val(16 downto 0);

end Behavioral;
