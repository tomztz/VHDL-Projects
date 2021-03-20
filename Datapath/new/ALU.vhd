library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
---NOTE:S1 correspnds to S0 in the truth table of lecture slides and S0 corresponds to S1 for this part
entity ALU is
    Port(
    A, B: in std_logic_vector(31 downto 0);
    s0, s1: in std_logic;
    c_in:in std_logic;
    s2: in std_logic;
    c_out:out std_logic;
    V:out std_logic;
    N:out std_logic;
    Z:out std_logic;
    G: out std_logic_vector(31 downto 0)
    );
end ALU;
architecture Behavioral of ALU is
COMPONENT mux2_32bit
port ( In0 : in std_logic_vector(31 downto 0);
In1 : in std_logic_vector(31 downto 0);
s : in std_logic;
Z : out std_logic_vector(31 downto 0));
END COMPONENT;
COMPONENT arithmeticCircuit
Port(
    a_in, b_in: in std_logic_vector(31 downto 0);
    s0, s1, c_in: in std_logic;
    output: out std_logic_vector(31 downto 0);
    c_out: out std_logic
    );
END COMPONENT;
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
   
    signal load_mux0,load_mux1,load_G:std_logic_vector(31 downto 0):= (others => '0');
    
    begin
  arithmetic_circuit: arithmeticCircuit PORT MAP(
        a_in=>A,
        b_in=>B,
        s0=>s0,
        s1=>s1,
        c_in=>c_in,
        c_out=>c_out,
        output=>load_mux0 
  );
  logic_circuit:logic_circuit32bits PORT MAP(
       A0=>A(0),
A1=>A(1),
A2=>A(2),
A3=>A(3),
A4=>A(4),
A5=>A(5),
A6=>A(6),
A7=>A(7),
A8=>A(8),
A9=>A(9),
A10=>A(10),
A11=>A(11),
A12=>A(12),
A13=>A(13),
A14=>A(14),
A15=>A(15),
A16=>A(16),
A17=>A(17),
A18=>A(18),
A19=>A(19),
A20=>A(20),
A21=>A(21),
A22=>A(22),
A23=>A(23),
A24=>A(24),
A25=>A(25),
A26=>A(26),
A27=>A(27),
A28=>A(28),
A29=>A(29),
A30=>A(30),
A31=>A(31),

B0=>B(0),
B1=>B(1),
B2=>B(2),
B3=>B(3),
B4=>B(4),
B5=>B(5),
B6=>B(6),
B7=>B(7),
B8=>B(8),
B9=>B(9),
B10=>B(10),
B11=>B(11),
B12=>B(12),
B13=>B(13),
B14=>B(14),
B15=>B(15),
B16=>B(16),
B17=>B(17),
B18=>B(18),
B19=>B(19),
B20=>B(20),
B21=>B(21),
B22=>B(22),
B23=>B(23),
B24=>B(24),
B25=>B(25),
B26=>B(26),
B27=>B(27),
B28=>B(28),
B29=>B(29),
B30=>B(30),
B31=>B(31),

S0=>S0,
S1=>S1,

 G0=>load_mux1(0),
G1=>load_mux1(1),
G2=>load_mux1(2),
G3=>load_mux1(3),
G4=>load_mux1(4),
G5=>load_mux1(5),
G6=>load_mux1(6),
G7=>load_mux1(7),
G8=>load_mux1(8),
G9=>load_mux1(9),
G10=>load_mux1(10),
G11=>load_mux1(11),
G12=>load_mux1(12),
G13=>load_mux1(13),
G14=>load_mux1(14),
G15=>load_mux1(15),
G16=>load_mux1(16),
G17=>load_mux1(17),
G18=>load_mux1(18),
G19=>load_mux1(19),
G20=>load_mux1(20),
G21=>load_mux1(21),
G22=>load_mux1(22),
G23=>load_mux1(23),
G24=>load_mux1(24),
G25=>load_mux1(25),
G26=>load_mux1(26),
G27=>load_mux1(27),
G28=>load_mux1(28),
G29=>load_mux1(29),
G30=>load_mux1(30),
G31=>load_mux1(31)       
  );  
  
 mux:mux2_32bit PORT MAP(
 in0=>load_mux0,
 in1=>load_mux1,
 s=>s2,
 Z=>load_G
 );

 
 Z<='1' after 5 ns when load_G="00000000000000000000000000000000" else
 '0' after 5 ns;
V <= '1' after 5 ns when A(31) = '0' and B(31) = '0' and load_G(31) = '1' else
  '1' after 5 ns when A(31) = '1' and B(31) = '1' and load_G(31) = '0' else
'0' after 5 ns;
N<='1' after 5 ns when load_G(31)='1' else '0' after 5 ns;
 G<=load_G after 5 ns;

 
 end Behavioral;
