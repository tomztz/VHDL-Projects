LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux32to32bits_tb IS
END mux32to32bits_tb ;
 
ARCHITECTURE behavior OF mux32to32bits_tb  IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux32_32bits
    PORT(
         s : IN  std_logic_vector(4 downto 0);
         in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,
         in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,
          in22,in23,in24,in25,in26,in27,in28,in29,in30,in31:
           std_logic_vector(31 downto 0);
         z : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic_vector(4 downto 0) := (others => '0');
   signal in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,
   in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,
   in22,in23,in24,in25,in26,in27,in28,in29,in30,in31 : std_logic_vector(31 downto 0) := (others => '0');
  

 	--Outputs
   signal z : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux32_32bits PORT MAP (
          s => s,
          in0 => in0,
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          in5 => in5,
          in6 => in6,
          in7 => in7,
          in8 => in8,
          in9 => in9,
          in10 => in10,
          in11 => in11,
          in12 => in12,
          in13 => in13,
          in14 => in14,
          in15 => in15,
          in16 => in16,
          in17 => in17,
          in18 => in18,
          in19 => in19,
          in20 => in20,
          in21 => in21,
          in22 => in22,
          in23 => in23,
          in24 => in24,
          in25 => in25,
          in26 =>in26,
          in27 => in27,
          in28 => in28,
          in29 => in29,
          in30 => in30,
          in31 => in31,
          
          z => z
        );

   stim_proc: process
   begin	
        in0 <= "10101010101010101010101010011110";	
        in1 <= "10000000000000010000000000000000";
		in2 <= "11000000000000010000000000000001";
		in3 <= "11100000000000010000000000000010";
		in4 <= "11110000000000010000000000000011";
		in5 <= "11111000000000010000000000000011";
		in6 <= "11111100000000010000000000000100";
		in7 <= "11111110000000010000000000000101";
		in8 <= "11111111000000010000000000000110";
		in9 <= "11111111100000010000000000000111";
		in10 <= "11111111100000010000000000001000";
		in11 <= "11111111110000010000000000001001";
		in12 <= "11111111111000010000000000001010";
		in13 <= "11111111111100010000000000001011";
		in14 <= "11111111111110010000000000001100";
		in15 <= "11111111111111010000000000001101";
		in16 <= "11111111111111110000000000001110";
		in17 <= "11111111111111111000000000001111";
		in18 <= "11111111111111111100000000010000";
		in19 <= "11111111111111111110000000010001";
		in20 <= "11111111111111111111000000010010";
		in21 <= "11111111111111111111100000010011";
		in22 <= "11111111111111111111110000010100";
		in23 <= "11111111111111111111111000010101";
		in24 <= "11111111111111111111111100010110";
		in25 <= "11111111111111111111111110010111";
		in26 <= "11111111111111111111111111011000";
		in27 <= "10101010101010101011111111111111";
		in28 <= "11111111111111111111111111111001";
		in29 <= "10101010101111111111111111111011";
		in30 <= "10101010101010101111111111111100";
		in31 <= "10101010101010101010101111111101";
		
		
		
		
      wait for 10 ns;	
      s <= "00000";

      wait for 10 ns;	
		s <= "00001";

      wait for 10 ns;	
		s <= "00010";

      wait for 10 ns;	
		s <= "00011";
		
	wait for 10 ns;	
		s <= "00100";
		
	wait for 10 ns;	
		s <= "00101";
		
	wait for 10 ns;	
		s <= "00110";
		
	wait for 10 ns;	
		s <= "00111";
		
		
	wait for 10 ns;	
		s <= "01000";
		
		
	wait for 10 ns;	
		s <= "01001";
		
	wait for 10 ns;	
		s <= "01010";
		
	wait for 10 ns;	
		s <= "01011";
	
	wait for 10 ns;	
		s <= "01100";
		
	wait for 10 ns;	
		s <= "01101";
		
	wait for 10 ns;	
		s <= "01110";
		
	wait for 10 ns;	
		s <= "01111";
		
	wait for 10 ns;	
		s <= "10000";
		
	wait for 10 ns;	
		s <= "10001";
		
	wait for 10 ns;	
		s <= "10010";
		
	wait for 10 ns;	
		s <= "10011";
		
	wait for 10 ns;	
		s <= "10100";
		
	wait for 10 ns;	
		s <= "10101";
		
	wait for 10 ns;	
		s <= "10110";
		
	wait for 10 ns;	
		s <= "10111";
	wait for 10 ns;	
		s <= "11000";
	wait for 10 ns;	
		s <= "11001";
		
	wait for 10 ns;	
		s <= "11010";
		
	wait for 10 ns;	
		s <= "11011";
		
	wait for 10 ns;	
		s <= "11100";
	wait for 10 ns;	
		s <= "11101";
	wait for 10 ns;	
		s <= "11110";
	wait for 10 ns;	
		s <= "11111";
	
	
	
		
	
	
	  
     
   wait for 10 ns;
   end process;

END;