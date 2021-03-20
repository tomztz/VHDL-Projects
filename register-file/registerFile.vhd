library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity register_file is
Port ( 
src_s:in std_logic_vector(4 downto 0);
des_A0 : in std_logic;
des_A1 : in std_logic;
des_A2 : in std_logic;
des_A3 : in std_logic;
des_A4 : in std_logic;
Clk : in std_logic;
data_src : in std_logic;
data : in std_logic_vector(31 downto 0);
reg0 : out std_logic_vector(31 downto 0);
reg1 : out std_logic_vector(31 downto 0);
reg2 : out std_logic_vector(31 downto 0);
reg3 : out std_logic_vector(31 downto 0);
reg4 : out std_logic_vector(31 downto 0);
reg5 : out std_logic_vector(31 downto 0);
reg6 : out std_logic_vector(31 downto 0);
reg7 : out std_logic_vector(31 downto 0);
reg8 : out std_logic_vector(31 downto 0);
reg9 : out std_logic_vector(31 downto 0);
reg10 : out std_logic_vector(31 downto 0);
reg11: out std_logic_vector(31 downto 0);
reg12: out std_logic_vector(31 downto 0);
reg13 : out std_logic_vector(31 downto 0);
reg14: out std_logic_vector(31 downto 0);
reg15: out std_logic_vector(31 downto 0);
reg16: out std_logic_vector(31 downto 0);
reg17 : out std_logic_vector(31 downto 0);
reg18 : out std_logic_vector(31 downto 0);
reg19 : out std_logic_vector(31 downto 0);
reg20 : out std_logic_vector(31 downto 0);
reg21 : out std_logic_vector(31 downto 0);
reg22 : out std_logic_vector(31 downto 0);
reg23 : out std_logic_vector(31 downto 0);
reg24 : out std_logic_vector(31 downto 0);
reg25 : out std_logic_vector(31 downto 0);
reg26 : out std_logic_vector(31 downto 0);
reg27 : out std_logic_vector(31 downto 0);
reg28 : out std_logic_vector(31 downto 0);
reg29 : out std_logic_vector(31 downto 0);
reg30 : out std_logic_vector(31 downto 0);
reg31 : out std_logic_vector(31 downto 0));
end register_file;

architecture Behavioral of register_file is
COMPONENT reg32
PORT(
D : IN std_logic_vector(31 downto 0);
load : IN std_logic;
Clk : IN std_logic;
Q : OUT std_logic_vector(31 downto 0));
END COMPONENT;

COMPONENT decoder_5to32
PORT(
A0 : IN std_logic;
A1 : IN std_logic;
A2:IN std_logic;
A3:In std_logic;
A4:In std_logic;
Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,
Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31 : OUT std_logic
);
END COMPONENT;
-- 2 to 1 line multiplexer
COMPONENT mux2_32bit
PORT(
In0 : IN std_logic_vector(31 downto 0);
In1 : IN std_logic_vector(31 downto 0);
s : IN std_logic;
Z : OUT std_logic_vector(31 downto 0)
);
END COMPONENT;

COMPONENT mux32_32bit
PORT(
In0, In1, In2, In3,In4,In5,In6,In7,In8,In9,In10,In11,In12,In13,In14,In15,In16,
    In17,In18,In19,In20,In21,In22,In23,In24,In25,
    In26,In27,In28,In29,In30,In31: in std_logic_vector(31 downto 0);
S:std_logic_vector(4 downto 0 );
Z : OUT std_logic_vector(31 downto 0)
);
END COMPONENT;

signal load_reg0, load_reg1, load_reg2, load_reg3,load_reg4,load_reg5,load_reg6,load_reg7,
load_reg8,load_reg9,load_reg10,load_reg11,load_reg12,load_reg13,load_reg14,load_reg15,load_reg16,
load_reg17,load_reg18,load_reg19,load_reg20,load_reg21,load_reg22,load_reg23,load_reg24,load_reg25,
load_reg26,load_reg27,load_reg28,load_reg29,load_reg30,load_reg31 : std_logic;
signal reg0_q, reg1_q, reg2_q, reg3_q,reg4_q,reg5_q,reg6_q,reg7_q,reg8_q,reg9_q,reg10_q,reg11_q,
reg12_q,reg13_q,reg14_q,reg15_q,reg16_q,reg17_q,reg18_q,reg19_q,reg20_q,reg21_q,reg22_q,reg23_q,
reg24_q,reg25_q,reg26_q,reg27_q,reg28_q,reg29_q,reg30_q,reg31_q,
data_src_mux_out, src_reg : std_logic_vector(31 downto 0);

begin

reg000: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg0,
Clk => Clk,
Q => reg0_q
);
reg001: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg1,
Clk => Clk,
Q => reg1_q
);

reg002: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg2,
Clk => Clk,
Q => reg2_q
);
-- register 1
reg003: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg3,
Clk => Clk,
Q => reg3_q
);

reg004: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg4,
Clk => Clk,
Q => reg4_q
);

reg005: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg5,
Clk => Clk,
Q => reg5_q
);
reg006: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg6,
Clk => Clk,
Q => reg6_q
);
reg007: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg7,
Clk => Clk,
Q => reg7_q
);
reg008: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg8,
Clk => Clk,
Q => reg8_q
);
reg009: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg9,
Clk => Clk,
Q => reg9_q
);  
reg010: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg10,
Clk => Clk,
Q => reg10_q
);
reg011: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg11,
Clk => Clk,
Q => reg11_q
);
reg012: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg12,
Clk => Clk,
Q => reg12_q
);
reg013: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg13,
Clk => Clk,
Q => reg13_q
);
reg014: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg14,
Clk => Clk,
Q => reg14_q
);
reg015: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg15,
Clk => Clk,
Q => reg15_q
);
reg016: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg16,
Clk => Clk,
Q => reg16_q
);
reg017: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg17,
Clk => Clk,
Q => reg17_q
);
reg018: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg18,
Clk => Clk,
Q => reg18_q
);
reg019: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg19,
Clk => Clk,
Q => reg19_q
);
reg020: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg20,
Clk => Clk,
Q => reg20_q
);
reg021: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg21,
Clk => Clk,
Q => reg21_q
);
reg022: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg22,
Clk => Clk,
Q => reg22_q
);
reg023: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg23,
Clk => Clk,
Q => reg23_q
);
reg024: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg24,
Clk => Clk,
Q => reg24_q
);
reg025: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg25,
Clk => Clk,
Q => reg25_q
);
reg026: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg26,
Clk => Clk,
Q => reg26_q
);
reg027: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg27,
Clk => Clk,
Q => reg27_q
);
reg028: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg28,
Clk => Clk,
Q => reg28_q
);
reg029: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg29,
Clk => Clk,
Q => reg29_q
);
reg030: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg30,
Clk => Clk,
Q => reg30_q
);
reg031: reg32 PORT MAP(
D => data_src_mux_out,
load => load_reg31,
Clk => Clk,
Q => reg31_q
);
des_decoder_2to4: decoder_5to32 PORT MAP(
A0 => des_A0,
A1 => des_A1,
A2 => des_A2,
A3 => des_A3,
A4 => des_A4,
Q0 => load_reg0,
Q1 => load_reg1,
Q2 => load_reg2,
Q3 => load_reg3,
Q4 => load_reg4,
Q5 => load_reg5,
Q6 => load_reg6,
Q7 => load_reg7,
Q8 => load_reg8,
Q9 => load_reg9,
Q10 => load_reg10,
Q11 => load_reg11,
Q12 => load_reg12,
Q13 => load_reg13,
Q14 => load_reg14,
Q15 => load_reg15,
Q16 => load_reg16,
Q17 => load_reg17,
Q18 => load_reg18,
Q19 => load_reg19,
Q20 => load_reg20,
Q21 => load_reg21,
Q22 => load_reg22,
Q23 => load_reg23,
Q24 => load_reg24,
Q25 => load_reg25,
Q26 => load_reg26,
Q27 => load_reg27,
Q28 => load_reg28,
Q29 => load_reg29,
Q30 => load_reg30,
Q31 => load_reg31

);
data_src_mux2_32bit: mux2_32bit PORT MAP(
In0 => data,
In1 => src_reg,
s => data_src,
Z => data_src_mux_out
);

Inst_mux4_4bit: mux32_32bit PORT MAP(
In0 => reg0_q,
In1 => reg1_q,
In2 => reg2_q,
In3 => reg3_q,
In4 => reg4_q,
In5 => reg5_q,
In6 => reg6_q,
In7 => reg7_q,
In8 => reg8_q,
In9 => reg9_q,
In10=> reg10_q,
In11 => reg11_q,
In12 => reg12_q,
In13 => reg13_q,
In14 => reg14_q,
In15 => reg15_q,
In16 => reg16_q,
In17 => reg17_q,
In18 => reg18_q,
In19 => reg19_q,
In20 => reg20_q,
In21 => reg21_q,
In22 => reg22_q,
In23 => reg23_q,
In24 => reg24_q,
In25 => reg25_q,
In26 => reg26_q,
In27 => reg27_q,
In28 => reg28_q,
In29 => reg29_q,
In30 => reg30_q,
In31 => reg31_q,





S =>src_s,
Z => src_reg
);
reg0 <= reg0_q;
reg1 <= reg1_q;
reg2 <= reg2_q;
reg3 <= reg3_q;
reg4 <= reg4_q;
reg5 <= reg5_q;
reg6 <= reg6_q;
reg7 <= reg7_q;
reg8 <= reg8_q;
reg9 <= reg9_q;
reg10 <= reg10_q;
reg11 <= reg11_q;
reg12 <= reg12_q;
reg13 <= reg13_q;
reg14 <= reg14_q;
reg15 <= reg15_q;
reg16 <= reg16_q;
reg17 <= reg17_q;
reg18 <= reg18_q;
reg19 <= reg19_q;
reg20 <= reg20_q;
reg21 <= reg21_q;
reg22 <= reg22_q;
reg23 <= reg23_q;     
reg24 <= reg24_q;
reg25 <= reg25_q;
reg26 <= reg26_q;
reg27 <= reg27_q;
reg28 <= reg28_q;
reg29 <= reg29_q;
reg30 <= reg30_q;
reg31 <= reg31_q;



end Behavioral;