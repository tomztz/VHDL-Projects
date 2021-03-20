LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--NOTE:S1 correspnds to S0 in the truth table of lecture slides and S0 corresponds to S1 for this part
entity logic_circuit32bits is
    Port(
    A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,
    A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31: in std_logic;
    B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,
    B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31:in std_logic;
    S0,S1: in std_logic;
    G0,G1,G2,G3,G4,G5,G6,G7,G8,G9,G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G20,
    G21,G22,G23,G24,G25,G26,G27,G28,G29,G30,G31: out std_logic
    );
end logic_circuit32bits;
architecture Behavioral of logic_circuit32bits is
 COMPONENT bit_slice_logic_circuit
     Port(
    A, B: in std_logic;
    S0, S1: in std_logic;
    G: out std_logic
    );
END COMPONENT;
begin
bit_slice00:bit_slice_logic_circuit PORT MAP(
    A=>A0,
    B=>B0,
    S0=>S0,
    S1=>S1,
    G=>G0
);
bit_slice01:bit_slice_logic_circuit PORT MAP(
    A=>A1,
    B=>B1,
    S0=>S0,
    S1=>S1,
    G=>G1
);
bit_slice02:bit_slice_logic_circuit PORT MAP(
    A=>A2,
    B=>B2,
    S0=>S0,
    S1=>S1,
    G=>G2
);
bit_slice03:bit_slice_logic_circuit PORT MAP(
    A=>A3,
    B=>B3,
    S0=>S0,
    S1=>S1,
    G=>G3
);
bit_slice04:bit_slice_logic_circuit PORT MAP(
    A=>A4,
    B=>B4,
    S0=>S0,
    S1=>S1,
    G=>G4
);
bit_slice05:bit_slice_logic_circuit PORT MAP(
    A=>A5,
    B=>B5,
    S0=>S0,
    S1=>S1,
    G=>G5
);
bit_slice06:bit_slice_logic_circuit PORT MAP(
    A=>A6,
    B=>B6,
    S0=>S0,
    S1=>S1,
    G=>G6
);
bit_slice07:bit_slice_logic_circuit PORT MAP(
    A=>A7,
    B=>B7,
    S0=>S0,
    S1=>S1,
    G=>G7
);
bit_slice08:bit_slice_logic_circuit PORT MAP(
    A=>A8,
    B=>B8,
    S0=>S0,
    S1=>S1,
    G=>G8
);
bit_slice09:bit_slice_logic_circuit PORT MAP(
    A=>A9,
    B=>B9,
   S0=>S0,
    S1=>S1,
    G=>G9
);
bit_slice10:bit_slice_logic_circuit PORT MAP(
    A=>A10,
    B=>B10,
    S0=>S0,
    S1=>S1,
    G=>G10
);
bit_slice11:bit_slice_logic_circuit PORT MAP(
    A=>A11,
    B=>B11,
    S0=>S0,
    S1=>S1,
    G=>G11
);
bit_slice12:bit_slice_logic_circuit PORT MAP(
    A=>A12,
    B=>B12,
    S0=>S0,
    S1=>S1,
    G=>G12
);
bit_slice13:bit_slice_logic_circuit PORT MAP(
    A=>A13,
    B=>B13,
   S0=>S0,
    S1=>S1,
    G=>G13
);
bit_slice14:bit_slice_logic_circuit PORT MAP(
    A=>A14,
    B=>B14,
    S0=>S0,
    S1=>S1,
    G=>G14
);
bit_slice15:bit_slice_logic_circuit PORT MAP(
    A=>A15,
    B=>B15,
    S0=>S0,
    S1=>S1,
    G=>G15
);
bit_slice16:bit_slice_logic_circuit PORT MAP(
    A=>A16,
    B=>B16,
    S0=>S0,
    S1=>S1,
    G=>G16
);
bit_slice17:bit_slice_logic_circuit PORT MAP(
    A=>A17,
    B=>B17,
    S0=>S0,
    S1=>S1,
    G=>G17
);
bit_slice18:bit_slice_logic_circuit PORT MAP(
    A=>A18,
    B=>B18,
    S0=>S0,
    S1=>S1,
    G=>G18
);
bit_slice19:bit_slice_logic_circuit PORT MAP(
    A=>A19,
    B=>B19,
    S0=>S0,
    S1=>S1,
    G=>G19
);
bit_slice20:bit_slice_logic_circuit PORT MAP(
    A=>A20,
    B=>B20,
    S0=>S0,
    S1=>S1,
    G=>G20
);
bit_slice21:bit_slice_logic_circuit PORT MAP(
    A=>A21,
    B=>B21,
   S0=>S0,
    S1=>S1,
    G=>G21
);
bit_slice22:bit_slice_logic_circuit PORT MAP(
    A=>A22,
    B=>B22,
    S0=>S0,
    S1=>S1,
    G=>G22
);
bit_slice23:bit_slice_logic_circuit PORT MAP(
    A=>A23,
    B=>B23,
   S0=>S0,
    S1=>S1,
    G=>G23
);
bit_slice24:bit_slice_logic_circuit PORT MAP(
    A=>A24,
    B=>B24,
    S0=>S0,
    S1=>S1,
    G=>G24
);
bit_slice25:bit_slice_logic_circuit PORT MAP(
    A=>A24,
    B=>B24,
    S0=>S0,
    S1=>S1,
    G=>G25
);
bit_slice26:bit_slice_logic_circuit PORT MAP(
    A=>A26,
    B=>B26,
    S0=>S0,
    S1=>S1,
    G=>G26
);
bit_slice27:bit_slice_logic_circuit PORT MAP(
    A=>A27,
    B=>B27,
    S0=>S0,
    S1=>S1,
    G=>G27
);
bit_slice28:bit_slice_logic_circuit PORT MAP(
    A=>A28,
    B=>B28,
    S0=>S0,
    S1=>S1,
    G=>G28
);
bit_slice29:bit_slice_logic_circuit PORT MAP(
    A=>A29,
    B=>B29,
    S0=>S0,
    S1=>S1,
    G=>G29
);
bit_slice30:bit_slice_logic_circuit PORT MAP(
    A=>A30,
    B=>B30,
    S0=>S0,
    S1=>S1,
    G=>G30
);
bit_slice31:bit_slice_logic_circuit PORT MAP(
    A=>A31,
    B=>B31,
    S0=>S0,
    S1=>S1,
    G=>G31
);


end Behavioral;

