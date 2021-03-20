LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--NOTE:S1 correspnds to S0 in the truth table of lecture slides and S0 corresponds to S1 for this part

 
ENTITY bit_slice_logic_circuit_tb IS
END bit_slice_logic_circuit_tb;
 
ARCHITECTURE behavior OF bit_slice_logic_circuit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bit_slice_logic_circuit
     Port(
    A, B: in std_logic;
    S0, S1: in std_logic;
    G: out std_logic
    );
    END COMPONENT;
    

   --Inputs
   signal A,B : std_logic:='0';
   signal S0 : std_logic:='0';
   signal S1 : std_logic :=  '0';
 	--Outputs
   signal G: std_logic:='0';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bit_slice_logic_circuit PORT MAP (
          A=>A,
          B=>B,
          S0=>S0,
          S1=>S1,
          G=>G
        );

   stim_proc: process
   begin
    A<='1';
    B<='1';
    S0<='0';
    S1<='0';
    wait for 10 ns;
    S0<='0';
    S1<='1';
    wait for 10 ns;
    S0<='1';
    S1<='0';
    wait for 10 ns;
    S0<='1';
    S1<='1';
    wait for 10 ns;
--    we could observe from the screen shots all the cases are tests correctly by comparing against the truth table in
--    the lecture slides:
--    when S0 and S1 is 0, and A and B are 1,we get a G of 1 which is A AND B from the 
--     first simulation screen shot
--    when A and B are unchanged  when S0 is 0 and S1 is 1,(note: S1 in this part refers 
--        to S0 and S0 to S1 in the lecture slides),we get a G of 1 which is A ORR B from the second screen shot
--     when we have S0 is 1 and S1 is 0,we get a G of o which is A XOR B from
--      the third screen shot
--     when both S0 and S1 is 1, G is 0 which is NOT A
--     A from the fourth screen shot.
   end process;

END;