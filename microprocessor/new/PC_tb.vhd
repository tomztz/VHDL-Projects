LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY PC_tb IS
END PC_tb;
 
ARCHITECTURE behavior OF PC_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    Port ( Extend : in  STD_LOGIC_VECTOR (31 downto 0);
			  reset : in STD_LOGIC;
			  Clk : in STD_LOGIC;
           PL : in  STD_LOGIC;
           PI : in  STD_LOGIC;
           PC_out : out  STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal Extend : std_logic_vector(31 downto 0) := (others => '0');
   signal PL : std_logic := '0';
   signal PI : std_logic := '0';
	signal reset : std_logic := '0';
	signal Clk : std_logic := '0';

 	--Outputs
   signal PC_out : std_logic_vector(31 downto 0);
 
 
   -- Clock period definitions
 
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          Extend => Extend,
			 reset => reset,
			 Clk => Clk,
          PL => PL,
          PI => PI,
          PC_out => PC_out
        );
		  
CLK<=not CLK after 400 ns;
-- need to set simulate.runtime to 100000ns to run this part
      -- Stimulus process
   stim_proc0: process
   begin		
		--Test reset
		reset<='1';
		Extend <= x"00000005";
		PI <= '0';
		PL <= '0';
		-- PC_out = 0x0000
		wait for 400 ns;
		
		
		--Test with PI = '0' and PL ='0'
		reset<='0';
		Extend <= x"00000005";
		PI <= '0';
		PL <= '0';
		-- PC_out = 0x0000
		wait for 400 ns;
		
		--Test with PI = '1' and PL = '0'
		Extend <= x"00000005";
		PI <= '1';
		PL <= '0';
		-- PC_out = 0x0001
		wait for 400 ns;
		
		--Test with PI = '0', PL = '1' and offset as 0x101
		Extend <= x"00000005";
		PI <= '0';
		PL <= '1';
		-- PC_out = 0x06
		wait;
		--between each cycle shown in the screen shot, the value incrase by 5
		--after each state.
   end process;

END;