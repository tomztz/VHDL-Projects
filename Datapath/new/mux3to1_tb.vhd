LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY mux3to1_tb IS
END mux3to1_tb;
 
ARCHITECTURE behavior OF mux3to1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux3to1
   Port ( In0, In1, In2 : in std_logic;
S0, S1 : in std_logic;
Z : out std_logic);
    END COMPONENT;
    

   --Inputs
   signal S0 : std_logic :='0';
   signal S1 : std_logic :='0';
   signal In0 : std_logic := '0';
   signal In1 : std_logic := '0';
   signal In2 : std_logic := '0';

 	--Outputs
   signal Z : std_logic:='0';

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux3to1 PORT MAP (
          S0 => S0,
          S1=>S1,
          In0 => In0,
          In1 => In1,
          In2 => In2,
          Z => Z
        );

   stim_proc: process
   begin		
      In0 <= '0';
		In1 <= '1';
		In2 <= '0';
		
      wait for 10 ns;	
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
   end process;

END;