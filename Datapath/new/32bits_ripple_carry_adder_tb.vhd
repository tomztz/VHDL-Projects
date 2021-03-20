LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY ripple_carry_adder_tb IS
END ripple_carry_adder_tb;
 
ARCHITECTURE behavior OF ripple_carry_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
    

   --Inputs
  signal  x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,
    x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31:std_logic:='0';
  signal y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17,y18,
    y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,y31:std_logic:='0';
  signal  c0:std_logic :='0';
 	--Outputs
   signal c31 : std_logic:='0';
    signal s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,
    s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31:std_logic:='0';
   
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ripple_carry_adder PORT MAP (
 x0=>x0,
x1=>x1,
x2=>x2,
x3=>x3,
x4=>x4,
x5=>x5,
x6=>x6,
x7=>x7,
x8=>x8,
x9=>x9,
x10=>x10,
x11=>x11,
x12=>x12,
x13=>x13,
x14=>x14,
x15=>x15,
x16=>x16,
x17=>x17,
x18=>x18,
x19=>x19,
x20=>x20,
x21=>x21,
x22=>x22,
x23=>x23,
x24=>x24,
x25=>x25,
x26=>x26,
x27=>x27,
x28=>x28,
x29=>x29,
x30=>x30,
x31=>x31,

y0=>y0,
y1=>y1,
y2=>y2,
y3=>y3,
y4=>y4,
y5=>y5,
y6=>y6,
y7=>y7,
y8=>y8,
y9=>y9,
y10=>y10,
y11=>y11,
y12=>y12,
y13=>y13,
y14=>y14,
y15=>y15,
y16=>y16,
y17=>y17,
y18=>y18,
y19=>y19,
y20=>y20,
y21=>y21,
y22=>y22,
y23=>y23,
y24=>y24,
y25=>y25,
y26=>y26,
y27=>y27,
y28=>y28,
y29=>y29,
y30=>y30,
y31=>y31,

c0=>c0,
c31=>c31,

s0=>s0,
s1=>s1,
s2=>s2,
s3=>s3,
s4=>s4,
s5=>s5,
s6=>s6,
s7=>s7,
s8=>s8,
s9=>s9,
s10=>s10,
s11=>s11,
s12=>s12,
s13=>s13,
s14=>s14,
s15=>s15,
s16=>s16,
s17=>s17,
s18=>s18,
s19=>s19,
s20=>s20,
s21=>s21,
s22=>s22,
s23=>s23,
s24=>s24,
s25=>s25,
s26=>s26,
s27=>s27,
s28=>s28,
s29=>s29,
s30=>s30,
s31=>s31);

   stim_proc: process
   begin
   c0<='0';
   wait for 10 ns;
   c0<='1';
    wait for 10 ns;
    y0<='1';
y1<='1';
y2<='0';
y3<='1';
y4<='0';
y5<='1';
y6<='0';
y7<='1';
y8<='0';
y9<='1';
y10<='0';
y11<='1';
y12<='0';
y13<='1';
y14<='0';
y15<='1';
y16<='0';
y17<='1';
y18<='0';
y19<='1';
y20<='0';
y21<='1';
y22<='0';
y23<='1';
y24<='0';
y25<='1';
y26<='0';
y27<='1';
y28<='0';
y29<='1';
y30<='0';
y31<='1';
   wait for 10 ns;
   c0<='0';
    wait for 10 ns;
   c0<='1';
    wait for 10 ns;
   x0<='1';
x1<='1';
x2<='1';
x3<='1';
x4<='1';
x5<='1';
x6<='1';
x7<='1';
x8<='1';
x9<='1';
x10<='1';
x11<='1';
x12<='1';
x13<='1';
x14<='1';
x15<='1';
x16<='1';
x17<='1';
x18<='1';
x19<='1';
x20<='1';
x21<='1';
x22<='1';
x23<='1';
x24<='1';
x25<='1';
x26<='1';
x27<='1';
x28<='1';
x29<='1';
x30<='1';
x31<='1';
wait for 10 ns;
   c0<='0';
    wait for 10 ns;
   c0<='1';
 wait for 10 ns;
 y0<='1';
y1<='1';
y2<='1';
y3<='1';
y4<='1';
y5<='1';
y6<='1';
y7<='1';
y8<='1';
y9<='1';
y10<='1';
y11<='1';
y12<='1';
y13<='1';
y14<='1';
y15<='1';
y16<='1';
y17<='1';
y18<='1';
y19<='1';
y20<='1';
y21<='1';
y22<='1';
y23<='1';
y24<='1';
y25<='1';
y26<='1';
y27<='1';
y28<='1';
y29<='1';
y30<='1';
y31<='1';
  wait for 10 ns; 
   c0<='0';
    wait for 10 ns;
   c0<='1';
 wait for 30 ns; 
-- from the simulation from the screen shot we could see that when we set x0-x31 to all
-- 1s and y0-y31 to all '1's the output s0-s1 is 0 when c0/carry in is 0,and 1 when c0 is '1'
-- both will result in a carry out c31.
 
-- i.e. 0xFFFFFFFF+0xFFFFFFFF=00000000 with carry out 1 when carry in is 0;
--        =FFFFFFFF with carry out 1 when carry in is 1.
        
--        which prove that the test result is correct 
   end process;

END;