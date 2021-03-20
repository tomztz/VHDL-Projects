LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY arithmeticCircuit_tb IS
END arithmeticCircuit_tb;
 
ARCHITECTURE behavior OF arithmeticCircuit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arithmeticCircuit
    Port(
    a_in, b_in: in std_logic_vector(31 downto 0);
    s0, s1, c_in: in std_logic;
    output: out std_logic_vector(31 downto 0);
    c_out: out std_logic
    );
    END COMPONENT;
    

   --Inputs
   signal s0,s1,c_in : std_logic:='0';
   signal a_in : std_logic_vector(31 downto 0) := (others => '0');
   signal b_in : std_logic_vector(31 downto 0) := (others => '0');
 	--Outputs
   signal output : std_logic_vector(31 downto 0):=(others=>'0');
   signal c_out: std_logic:='0';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arithmeticCircuit PORT MAP (
          s0 => s0,
          s1=>s1,
          a_in=>a_in,
          b_in=>b_in,
          c_in=>c_in,
          output=>output,
          c_out=>c_out
        );

   stim_proc: process
   begin
       b_in<="00000000000000000000000000000000";
       a_in<="00000000000000000000000000000000";
      s0<='0';
      s1<='0';
  c_in<='1';
  wait for 10 ns;
    s0<='1';
    s1<='0';
     a_in<="00000000000000000000000000000000";
     b_in<="11111111111111111111111111111110";
   c_in<='1';
    wait for 10 ns;
      s0<='0';
      s1<='1';
       a_in<="11111111111111111111111111111110";
        b_in<="00000000000000000000000000000000";
        c_in<='1';
   wait for 10 ns;
    s0<='1';
      s1<='1';
    b_in<="11111111111111111111111111111111";
    a_in<="11111111111111111111111111111110";
         c_in<='1';
    wait for 10 ns;
--    we could observe from the screen shots all the cases are tests correctly by comparing against the truth table in
--    the lecture slides:
--    when S0 and S1 is 0, and A and B are 0, but carry in is 1 we get a result of 0x00000001 which is A+1 from the 
--     first simulation screen shot
--    when A is 0 and B is set to 0xFFFFFFFE and a carry in when S0 is 1 and S1 is 0 ,(note: S1 in this part refers 
--        to S0 and S0 to S1 in the lecture slides),we get an output of 0X00000002 which is NOT B +1 from the second screen shot
--     when A is 0xFFFFFFFE and B is 0, and we have S0 is 0 and S1 is 1 and a carry in,we get an output of 0xFFFFFFF which is A+B+1 from
--      the third screen shot
--     when A is 0xFFFFFFFE and B is 0xFFFFFFFF and both S0 and S1 is 1, and a carry in, the output is 0xFFFFFFFE which is
--     A from the fourth screen shot.

   end process;

END;