LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY IR_tb IS
END IR_tb;
 
ARCHITECTURE behavior OF IR_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IR
    Port ( data_in : in  STD_LOGIC_VECTOR (31 downto 0);
           IL : in  STD_LOGIC;
			  Clk : in STD_LOGIC;
           Opcode : out  STD_LOGIC_VECTOR (16 downto 0);
           DR : out  STD_LOGIC_VECTOR (4 downto 0);
           SA : out  STD_LOGIC_VECTOR (4 downto 0);
           SB : out  STD_LOGIC_VECTOR (4 downto 0));
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(31 downto 0) := (others => '0');
   signal IL : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Opcode : std_logic_vector(16 downto 0);
   signal DR : std_logic_vector(4 downto 0);
   signal SA : std_logic_vector(4 downto 0);
   signal SB : std_logic_vector(4 downto 0);
	
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IR PORT MAP (
          data_in => data_in,
          IL => IL,
			 Clk => Clk,
          Opcode => Opcode,
          DR => DR,
          SA => SA,
          SB => SB
        );
		

 Clk<= not Clk after 10 ns;
      -- Stimulus process
   stim_proc0: process
   begin		
		--Test Data being loaded in. 
		--Opcode = 00000000000100000, DR = 11111, SA = 10111, SB = 01110.
		--Data in = 00000000000100000 11111 10101 01110,  IL = 1.
		data_in <= "00000000000100000111111010101110";
		IL <= '1'; 
		wait for 100ns;
		
		--Test Data not being loaded in. (Therefore the Outputs are the same as the last test)
		--Opcode = 00000000000100000, DR = 11111, SA = 10111, SB = 01110.
		--Data in = 00000000000011100 01000 11111 00000, IL = 1.
		data_in <= "00000000000011100010001111100000";
		IL <= '0';
		wait;
		
   end process;

END;
