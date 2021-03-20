LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY multiplexer_2to1_tb IS
END multiplexer_2to1_tb;
 
ARCHITECTURE behavior OF multiplexer_2to1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2_32bit
    PORT(
        In0 : in std_logic_vector(31 downto 0);
        In1 : in std_logic_vector(31 downto 0);
        s : in std_logic;
        Z : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic;
   signal In0 : std_logic_vector(31 downto 0) := (others => '0');
   signal In1 : std_logic_vector(31 downto 0) := (others => '0');
 	--Outputs
   signal z : std_logic_vector(31 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2_32bit PORT MAP (
          s => s,
          In0 => In0,
          In1 => In1,
          z => z
        );

   stim_proc: process
   begin
      in0 <= "10101010101010101100110011001100";		
      in1 <= "11110000111100001111111100000000";
		
      wait for 10 ns;	
      s <= '1';
        wait for 10 ns;
        s<='0';
     
   wait for 10 ns;
   end process;

END;