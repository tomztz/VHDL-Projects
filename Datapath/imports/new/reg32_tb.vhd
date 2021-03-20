LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY reg32_tb IS
END reg32_tb;
 
ARCHITECTURE behavior OF reg32_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg32
    PORT(
         D : in std_logic_vector(31 downto 0);
        load, Clk : in std_logic;
        Q : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(31 downto 0):= (others => '0');
   signal load:std_logic:='0';
   signal Clk:std_logic:='0';
 	--Outputs
   signal Q : std_logic_vector(31 downto 0);
 
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg32 PORT MAP (
          D=>D,
          load=>load,
          Clk=>Clk,
          Q=>Q
        );
Clk<=not Clk after 10ns;	
 stim_proc: process
   begin		
      
      D<="10000000000000001000000000000000";
      
      load<='0';
       wait for 10ns;
        load<='1';
        wait for 10ns;
        load<='0';
        wait for 10ns;
        load<='1';
		
     
 
   end process;

END;
