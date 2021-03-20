LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY mux_C_tb IS
END mux_C_tb;
 
ARCHITECTURE behavior OF mux_C_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_C
   port ( In0 : in std_logic_vector(16 downto 0);
In1 : in std_logic_vector(16 downto 0);
MC : in std_logic;
Z : out std_logic_vector(16 downto 0));
    END COMPONENT;
    

   --Inputs
   signal MC : std_logic;
   signal In0 : std_logic_vector(16 downto 0) := (others => '0');
   signal In1 : std_logic_vector(16 downto 0) := (others => '0');
 	--Outputs
   signal z : std_logic_vector(16 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_C PORT MAP (
          MC => MC,
          In0 => In0,
          In1 => In1,
          z => z
        );

   stim_proc: process
   begin
      in0 <= "11111111111111111";		
      in1 <= "11110000101010101";
		
      wait for 10 ns;	
      MC <= '1';
        wait for 10 ns;
        MC<='0';
     
   wait for 10 ns;
   end process;

END;