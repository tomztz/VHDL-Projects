LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Extend_tb IS
END Extend_tb;
 
ARCHITECTURE behavior OF Extend_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Extend
    Port ( DR : in  STD_LOGIC_VECTOR (4 downto 0);
           SB : in  STD_LOGIC_VECTOR (4 downto 0);
           extension : out  STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal DR : std_logic_vector(4 downto 0) := (others => '0');
   signal SB : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal extension : std_logic_vector(31 downto 0);
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Extend PORT MAP (
          DR => DR,
          SB => SB,
          extension => extension
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- Test with most significant  bit = 1
		DR <= "10100";
		SB <= "01000";
		-- Extension = 11111111111111111111111111111111010001000
      wait for 100 ns;	

      -- Test with most significant  bit = 0
		DR <= "01100";
		SB <= "01100";
		-- Extension = 00000000000000000000000000000000110001100
      wait;
   end process;

END;