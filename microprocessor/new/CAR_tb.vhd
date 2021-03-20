LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY CAR_tb IS
END CAR_tb;
 
ARCHITECTURE behavior OF CAR_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CAR
    Port ( data_in : in  STD_LOGIC_VECTOR (16 downto 0);  
           S : in  STD_LOGIC;
           reset : in STD_LOGIC;
           Clk : in STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (16 downto 0));
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(16 downto 0) := (others => '0');
   signal S : std_logic := '0';
	signal Clk : std_logic := '0';
	signal reset : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(16 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CAR PORT MAP (
          data_in => data_in,
			 reset => reset,
			 Clk => Clk,
          S => S,
          data_out => data_out
        );
		  

    CLK<=not CLK after 10 ns;
		 -- Stimulus process
   stim_proc0: process
   begin		
		--Load the CAR with the input (condition == 1)
		data_in <= "00000000001000001";
		S <= '1';
		reset <='0';
		--data_out = 00000000001000001
		wait for 100 ns;
		
		--Increment the CAR (condition == 0)
		data_in <= "00000000001000001";
		S <= '0';
		--data_out = 000000000001000010
		wait for 100 ns;
		reset<='1';
		--should reset to 0
		-- all clearly shown in the screen shot
		wait;
   end process;

END;
