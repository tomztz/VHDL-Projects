LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- -NOTE:S1 correspnds to S0 in the truth table of lecture slides and S0 corresponds to S1 for this part

ENTITY logic_circuit32bits_tb IS
END logic_circuit32bits_tb;
 
ARCHITECTURE behavior OF logic_circuit32bits_tb IS 
 --NOTE:S1 correspnds to S0 in the truth table of lecture slides and S0 corresponds to S1 for this part
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logic_circuit32bits
     Port(
    A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,
    A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31: in std_logic;
    B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,
    B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31:in std_logic;
    S0,S1: in std_logic;
    G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G20,
    G21,G22,G23,G24,G25,G26,G27,G28,G29,G30,G31: out std_logic
    );
    END COMPONENT;
    

   --Inputs
  signal A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,
    A16,A17,A18,A19,A20,A21,A22,A23,A24,
    A25,A26,A27,A28,A29,A30,A31:std_logic:='0';
  signal B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,
    B16,B17,B18,B19,B20,B21,B22,B23,
    B24,B25,B26,B27,B28,B29,B30,B31:std_logic:='0';
  signal S0,S1:std_logic :='0';
 	--Outputs
    signal G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G20,
    G21,G22,G23,G24,G25,G26,G27,
    G28,G29,G30,G31:std_logic:='0';
   
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logic_circuit32bits PORT MAP (
A0=>A0,
A1=>A1,
A2=>A2,
A3=>A3,
A4=>A4,
A5=>A5,
A6=>A6,
A7=>A7,
A8=>A8,
A9=>A9,
A10=>A10,
A11=>A11,
A12=>A12,
A13=>A13,
A14=>A14,
A15=>A15,
A16=>A16,
A17=>A17,
A18=>A18,
A19=>A19,
A20=>A20,
A21=>A21,
A22=>A22,
A23=>A23,
A24=>A24,
A25=>A25,
A26=>A26,
A27=>A27,
A28=>A28,
A29=>A29,
A30=>A30,
A31=>A31,

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

G0=>G0,
G1=>G1,
G2=>G2,
G3=>G3,
G4=>G4,
G5=>G5,
G6=>G6,
G7=>G7,
G8=>G8,
G9=>G9,
G10=>G10,
G11=>G11,
G12=>G12,
G13=>G13,
G14=>G14,
G15=>G15,
G16=>G16,
G17=>G17,
G18=>G18,
G19=>G19,
G20=>G20,
G21=>G21,
G22=>G22,
G23=>G23,
G24=>G24,
G25=>G25,
G26=>G26,
G27=>G27,
G28=>G28,
G29=>G29,
G30=>G30,
G31=>G31
);

stim_proc: process
begin
A0<='0';
A1<='0';
A2<='1';
A3<='1';
A4<='0';
A5<='1';
A6<='0';
A7<='0';
A8<='0';
A9<='1';
A10<='1';
A11<='1';
A12<='1';
A13<='1';
A14<='0';
A15<='0';
A16<='1';
A17<='0';
A18<='0';
A19<='1';
A20<='1';
A21<='1';
A22<='1';
A23<='0';
A24<='0';
A25<='0';
A26<='0';
A27<='0';
A28<='1';
A29<='0';
A30<='0';
A31<='1';

B0<='0';
B1<='0';
B2<='1';
B3<='0';
B4<='1';
B5<='1';
B6<='1';
B7<='0';
B8<='1';
B9<='1';
B10<='1';
B11<='1';
B12<='1';
B13<='0';
B14<='0';
B15<='0';
B16<='0';
B17<='0';
B18<='0';
B19<='1';
B20<='1';
B21<='0';
B22<='1';
B23<='0';
B24<='0';
B25<='1';
B26<='0';
B27<='0';
B28<='0';
B29<='0';
B30<='0';
B31<='1';

S0<='0';
    S1<='0';
wait for 10 ns;
S0<='0';
    S1<='1';
 wait for 10 ns;
S0<='1';
    S1<='0';
  wait for 10 ns;
S0<='1';
    S1<='1';
 wait for 10 ns;
-- made up of 32 bits slice of 1 bit slice of logic circuit working 
-- independantly, each result of the test bench is correct. based on the
--truth table for bit slice.
end process;
END;