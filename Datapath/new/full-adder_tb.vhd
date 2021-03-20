LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY full_adder_tb IS
END full_adder_tb;
 
ARCHITECTURE behavior OF full_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder
    Port (in1, in2, c_in:in std_logic;
sum, c_out:out std_logic );
    END COMPONENT;
    

   --Inputs
   signal c_in : std_logic:='0';
   signal in1 : std_logic:='0';
   signal in2 : std_logic:='0';
 	--Outputs
   signal sum : std_logic:='0';
   signal c_out:std_logic:='0';
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder PORT MAP (
          c_in => c_in,
          in1 => in1,
          in2 => in2,
          sum => sum,
          c_out=>c_out
        );

   stim_proc: process
   begin
      in1<='0';
      in2<='0';
      c_in<='0';
     
   wait for 10 ns;
        in1<='0';
      in2<='0';
      c_in<='1';
      wait for 10 ns;
        in1<='1';
      in2<='0';
      c_in<='0';
      wait for 10 ns;
        in1<='1';
      in2<='0';
      c_in<='1';
      wait for 10 ns;
        in1<='0';
      in2<='1';
      c_in<='0';
   wait for 10 ns;
        in1<='0';
      in2<='1';
      c_in<='1';
     wait for 10 ns;
        in1<='1';
      in2<='1';
      c_in<='0';
       wait for 10 ns;
        in1<='1';
      in2<='1';
      c_in<='1';
    wait for 10 ns;       
   end process;

END;