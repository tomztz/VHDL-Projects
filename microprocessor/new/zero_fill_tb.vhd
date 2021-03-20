LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY zero_fill_tb IS
END zero_fill_tb;
 
ARCHITECTURE behavior OF zero_fill_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT zero_fill
   Port ( SB : in  STD_LOGIC_VECTOR (4 downto 0);
	 constant_out : out STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal SB : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal constant_out : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: zero_fill PORT MAP (
          SB => SB,
          constant_out => constant_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
		
		SB <= "00101";
      wait for 100 ns;
		
		
		SB <= "00000";
      wait for 100 ns;
		
		
		SB <= "00010";
		wait;
      end process;
-- we could see in the screenshot that all  SB is filled to 32 bits with all zeros at the
--front
END;
