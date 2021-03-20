LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_2to1_tb IS
END mux_2to1_tb;
 
ARCHITECTURE behavior OF mux_2to1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
COMPONENT mux_2to1
    port ( In0 : in std_logic;
In1 : in std_logic;
s : in std_logic;
Z : out std_logic);
END COMPONENT;
    

   --Inputs
   signal In0 : std_logic:='0';
   signal In1 : std_logic:='0';
   signal s : std_logic:='0';
 	--Outputs
   signal Z : std_logic:='0';

  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2to1 PORT MAP (
          In0 => In0,
          In1 => In1,
          s=>s,
          Z=>Z
        );

   stim_proc: process
   begin
       in0 <= '0';		
      in1 <= '0';
		
      wait for 10 ns;	
      s <= '1';
        wait for 10 ns;
        s<='0';
     
   wait for 10 ns;
   in0 <= '1';		
      in1 <= '0';
		
      wait for 10 ns;	
      s <= '1';
        wait for 10 ns;
        s<='0';   
  wait for 10 ns;
   in0 <= '1';		
      in1 <= '1';
		
      wait for 10 ns;	
      s <= '1';
        wait for 10 ns;
        s<='0';  
  wait for 5 ns;
   end process;

END;
