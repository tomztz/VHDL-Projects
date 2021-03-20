LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY shifter_tb IS
END shifter_tb;
 
ARCHITECTURE behavior OF shifter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shifter
    Port (B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,
B12,B13,B14,B15,B16,B17,B18,
B19,B20,B21,B22,B23,B24,B25,B26,
B27,B28,B29,B30,B31:in std_logic;
S0,S1:in std_logic;
l0:in std_logic;
l31:in std_logic;
H0,H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,
H12,H13,H14,H15,H16,H17,H18,H19,H20,H21,
H22,H23,H24,H25,H26,H27,H28,H29,H30,H31:out std_logic );
    END COMPONENT;
    

   --Inputs
   signal B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,
B12,B13,B14,B15,B16,B17,B18,
B19,B20,B21,B22,B23,B24,B25,B26,
B27,B28,B29,B30,B31:std_logic:='0';
   signal S0,S1: std_logic:='0';
   signal l0: std_logic:='0';
    signal l31: std_logic:='0'; 
 	--Outputs
  signal  H0,H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,
H12,H13,H14,H15,H16,H17,H18,H19,H20,H21,
H22,H23,H24,H25,H26,H27,H28,H29,H30,H31: std_logic:='0';
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shifter PORT MAP (
    B0=>B0,
    B1=>B1,
    B2=>B2,
    B3=>B3,
    B4=>B4,
    B5=>B5,
    B6=>B6,
    B7=>B7,
    B8=>B8,
    B9=>B9,
    B10=>B10,
    B11=>B11,
    B12=>B12,
    B13=>B13,
    B14=>B14,
    B15=>B15,
    B16=>B16,
    B17=>B17,
    B18=>B18,
    B19=>B19,
    B20=>B20,
    B21=>B21,
    B22=>B22,
    B23=>B23,
    B24=>B24,
    B25=>B25,
    B26=>B26,
    B27=>B27,
    B28=>B28,
    B29=>B29,
    B30=>B30,
    B31=>B31,
    
    S0=>S0,
     S1=>S1,
     
     l0=>l0,
     l31=>l31,
   H0=>H0,
    H1=>H1,
    H2=>H2,
    H3=>H3,
    H4=>H4,
    H5=>H5,
    H6=>H6,
    H7=>H7,
    H8=>H8,
    H9=>H9,
    H10=>H10,
    H11=>H11,
    H12=>H12,
    H13=>H13,
    H14=>H14,
    H15=>H15,
    H16=>H16,
    H17=>H17,
    H18=>H18,
    H19=>H19,
    H20=>H20,
    H21=>H21,
    H22=>H22,
    H23=>H23,
    H24=>H24,
    H25=>H25,
    H26=>H26,
    H27=>H27,
    H28=>H28,
    H29=>H29,
    H30=>H30,
    H31=>H31
        );

   stim_proc: process
   begin
    B0<='1';
B1<='1';
B2<='0';
B3<='1';
B4<='0';
B5<='0';
B6<='0';
B7<='0';
B8<='0';
B9<='0';
B10<='0';
B11<='0';
B12<='0';
B13<='0';
B14<='0';
B15<='0';
B16<='0';
B17<='0';
B18<='0';
B19<='0';
B20<='0';
B21<='0';
B22<='0';
B23<='0';
B24<='0';
B25<='0';
B26<='0';
B27<='0';
B28<='0';
B29<='0';
B30<='0';
B31<='0';

S0<='0';
S1<='0';
wait for 10 ns;
S0<='1';
S1<='0';
wait for 10 ns;
S0<='0';
S1<='1';
wait for 10 ns;
S0<='1';
S1<='1';
--i set up the first 4 MSB bits of B,B0=1,B1=1,B2=0,B3=1 and set S0 and S1 to different values to shift them around:
--when S0 and S1 are 0,we could see that B0 is 1,B1 is 0 B2 is 1 and B3 is 0,which show that they shift one bit
--when S0 is 1,we could see that B0 is 0,B1 is 1 B2 is 0 and B3 is 0,which show that they shift two bits
--when S1 is 1,we could see that B0 is 1,B1 is 0 B2 is 0 and B3 is 0,which show that they shift three bits
--when S0 is 0 and S1 is 0,we could see that B0 is 0,B1 is 0 B2 is 0 and B3 is 0,which show that they shift four bits
    

    wait for 10 ns;
   end process;

END;