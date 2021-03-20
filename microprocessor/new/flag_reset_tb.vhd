
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY flag_reset_tb IS
END flag_reset_tb;
 
ARCHITECTURE behavior OF flag_reset_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flag_reset
  port ( V:in std_logic;
C:in std_logic;
N:in std_logic;
Z:in std_logic;
load_enable:in std_logic;
RV:in std_logic;
RC:in std_logic;
RN:in std_logic;
RZ:in std_logic;
Q : out std_logic_vector(3 downto 0));
    END COMPONENT;
    

   --Inputs
   signal V: std_logic:='0';
signal C: std_logic:='0';
signal N: std_logic:='0';
signal Z: std_logic:='0';
signal load_enable: std_logic:='0';
signal RV: std_logic:='0';
signal RC: std_logic:='0';
signal RN: std_logic:='0';
signal RZ: std_logic:='0';
 	--Outputs
   signal Q : std_logic_vector(3 downto 0):= (others => '0');
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flag_reset PORT MAP (
          V=>V,
          C=>C,
          N=>N,
          Z=>Z,
          load_enable=>load_enable,
          RV=>RV,
          RC=>RC,
          RN=>RN,
          RZ=>RZ,
          
          Q=>Q
        );

   stim_proc: process
   begin
  
      
       C<='1';
       load_enable<='1';
      wait for 10 ns;
       RC<='1';
     --from the screenshot, we could see that when C and load enable is set,
     --Q(0) is set to 1, when RC is set, it goes back to 0.
  
   wait for 10ns;
   end process;

END;