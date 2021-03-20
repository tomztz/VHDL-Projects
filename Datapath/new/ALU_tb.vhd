LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
---NOTE:S1 correspnds to S0 in the truth table of lecture slides and S0 corresponds to S1 for this part
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS
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

signal A,B: std_logic_vector(31 downto 0):= (others => '0');
signal s0,s1,c_in,s2:std_logic:='0';

signal G: std_logic_vector(31 downto 0):= (others => '0');
signal c_out,V,N,Z:std_logic:='0';
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          s0 => s0,
          s1=>s1,
          s2=>s2,
          A=>A,
          B=>B,
          c_in=>c_in,
        V=>V,
        N=>N,
        Z=>Z,
          G=>G,
          c_out=>c_out
        );

   stim_proc: process
   begin
   
   A<="11111111111111111111111111111100";
   B<="00000000000000000000000000000001";
   c_in<='0';
   s1<='0';
   s0<='0';
   s2<='0';
   wait for 10 ns;

   s0<='0';
   s1<='0';
   s2<='0';
   c_in<='1';
   wait for 10 ns;

     s0<='0';
    s1<='1';
    c_in<='0';
      s2<='0';
   wait for 10 ns;

   s0<='1';
   s1<='0';
   s2<='0';
   wait for 10 ns;

    s0<='1';
    s1<='1';
      s2<='0';
   wait for 10 ns;
   
   s0<='0';
    s1<='0';
      s2<='1';
 
--   also test for Z
   wait for 10 ns;
  
    s0<='0';
    s1<='1';
      s2<='1';
   wait for 10 ns;

 s0<='1';
    s1<='0';
      s2<='1';
   wait for 10 ns;
   
    s0<='1';
    s1<='1';
      s2<='1';
   wait for 10 ns;
 A<="11111111111111111111111111111100";
   B<="10000000000000000000000000000001";
   c_in<='0';
   s1<='1';
   s0<='0';
   s2<='0';
   wait for 10 ns;

--we could observe from the screen shots all the cases are tests correctly by comparing against the truth table in
----    the lecture slides for A=0xFFFFFFFC and B=0x00000001(note S0 refers to S1 and S1 to S0 to the lecture slides)
--  when S0=0 and S1=0 and S2=0 and no carry in, we get G as 0xFFFFFFFC which is A, and the N flag is set.
-- when there is a carryin while S0 and S1 is 0,G is 0xFFFFFFFD which is A+1
--when S1=1 ,G is 0xFFFFFFFD which is A+1
--when S0=1,G is 0xFFFFFFFA which is A+not B
--when s0=1 and s1=1,G is 0xFFFFFFFB which is A-1
--when s2=1,G is 0,as A AND B is 0, and zero flag is set
--when s2=1 and s1=1,G is 0xFFFFFFFD,which is the result A OR B
--when s0=1 and s2=1,G is 0xFFFFFFFD,which is the result A XOR B
--when all S0-S2 is 1, G is 0x00000003 which is not A
-- lastly we set the MSB of B to be 1 to test for a overflow, and we do get an overflow as screenshot 10.

   
end process;

END;
