--NOTE:S1 correspnds to S0 in the truth table of lecture slides and S0 corresponds to S1 for this part
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
entity bit_slice_logic_circuit is
    Port(
    A, B: in std_logic;
    S0, S1: in std_logic;
    G: out std_logic
    );
end bit_slice_logic_circuit;
architecture Behavioral of bit_slice_logic_circuit is
COMPONENT mux4_1bit
Port ( In0, In1, In2, In3 : in std_logic;
S0, S1 : in std_logic;
Z : out std_logic);
END COMPONENT;
signal load_In0,load_In1,load_In2,load_In3:std_logic:='0';
begin
bitSlice_logic:mux4_1bit PORT MAP(
    S0=>S0,
    S1=>S1,
    
    
    In0=>load_In0,
    In1=>load_In1,
    In2=>load_In2,
    In3=>load_In3,
    
    Z=>G
);
load_In0<=(A and B) after 5 ns;
load_In1<=(A xor B) after 5 ns;
load_In2<=(A or B) after 5 ns;
load_In3<=(not A) after 5 ns;

end Behavioral;