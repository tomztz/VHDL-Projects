LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    Port ( 
    TA:in std_logic_vector(5 downto 0);
TD:in std_logic_vector(5 downto 0);
TB:In std_logic_vector(5 downto 0);
des_select:in std_logic_vector(4 downto 0);
A_select:in std_logic_vector(4 downto 0);
B_select:in std_logic_vector(4 downto 0);
load_enable: in std_logic;
Data_address:in std_logic_vector(31 downto 0);
A_Data,B_Data:out std_logic_vector(31 downto 0);
Clk : in std_logic
);
    END COMPONENT;
    

   --Inputs
   signal des_select,A_select,B_select : std_logic_vector(4 downto 0):= (others => '0');
   signal  load_enable: std_logic := '0';
   signal Clk: std_logic := '0';
   signal Data_address : std_logic_vector(31 downto 0) := (others => '0');
    signal TA: std_logic_vector(5 downto 0) := (others => '0');
signal TD: std_logic_vector(5 downto 0) := (others => '0');
signal TB: std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal A_Data,B_Data : std_logic_vector(31 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
         des_select=>des_select,
         A_select=>A_select,
         B_select=>B_select,
         load_enable=>load_enable,
         Clk=>Clk,
         Data_address=>Data_address,
         A_Data=>A_Data,
         B_Data=>B_Data,
         TA=>TA,
         TB=>TB,
         TD=>TD
        );
Clk<=not Clk after 10ns;
   stim_proc: process
   begin		
   Data_address<=x"19334401";
   load_enable<='1';
   
   wait for 100 ns;
   Data_address<=x"19334400";
   des_select<="00001";
   A_select<="00001";
   B_select<="00001";
   
   wait for 100 ns;
   Data_address<=x"19334399";
   des_select<="00010";
   A_select<="00010";
   B_select<="00010";
  
    wait for 100 ns;
    Data_address<=x"19334398";
   des_select<="00011";
   A_select<="00011";
   B_select<="00011";
   
   wait for 100 ns;
    --different data transfer and the output changes accordingly.
   end process;

END;