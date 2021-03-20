LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_S_tb IS
END mux_S_tb;
 
ARCHITECTURE behavior OF mux_S_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_S
    Port ( N:in  STD_LOGIC;
           C:in  STD_LOGIC;
           V:in  STD_LOGIC;
           Z:in  STD_LOGIC;
           NOTC: in STD_LOGIC;
           NOTZ: in STD_LOGIC;
           one:in STD_LOGIC;
           zero: in STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           line_out : out  STD_LOGIC);
    END COMPONENT;
    

   --Inputs
  
   signal N : std_logic := '0';
   signal C : std_logic := '0';
   signal V : std_logic := '0';
   signal Z : std_logic := '0';
   signal NOTC : std_logic := '0';
   signal NOTZ : std_logic := '0';
   signal one : std_logic := '0';
   signal zero : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S2 : std_logic := '0';

 	--Outputs
   signal line_out : std_logic;

 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_S PORT MAP (
          N => N,
          C=>C,
          V=>V,
          Z=>Z,
          NOTC=>NOTC,
          NOTZ=>NOTZ,
          one=>one,
          zero=>zero,
          S0 => S0,
          S1 => S1,
          S2 => S2,
          line_out => line_out
        );
 stim_proc: process
 begin		
      N <= '0';
		C <= '1';
		V <= '0';
		Z <= '1';
		NOTC<='1';
		NOTZ<='0';
		one<='0';
		zero<='0';
		
      wait for 10 ns;	
        S0<='0';
        S1<='0';
        S2<='0';
      wait for 10 ns;	
		 S0<='0';
        S1<='0';
        S2<='1';

      wait for 10 ns;	
		S0<='0';
        S1<='1';
        S2<='0';
      wait for 10 ns;	
		S0<='0';
        S1<='1';
         S2<='1';
      wait for 10 ns;
      S0<='1';
        S1<='0';
         S2<='0';
      wait for 10 ns;
      S0<='1';
        S1<='0';
         S2<='1';
      wait for 10 ns;
      S0<='1';
        S1<='1';
         S2<='0';
      wait for 10 ns;
      S0<='1';
        S1<='1';
         S2<='1';
      wait for 10 ns;
   end process;
   

END;
