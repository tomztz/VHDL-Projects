library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IR is
    Port ( data_in : in  STD_LOGIC_VECTOR (31 downto 0);
           IL : in  STD_LOGIC;
			  Clk : in STD_LOGIC;
           Opcode : out  STD_LOGIC_VECTOR (16 downto 0);
           DR : out  STD_LOGIC_VECTOR (4 downto 0);
           SA : out  STD_LOGIC_VECTOR (4 downto 0);
           SB : out  STD_LOGIC_VECTOR (4 downto 0));
end IR;

architecture Behavioral of IR is

	
	COMPONENT reg32
	port ( D : in std_logic_vector(31 downto 0);
load, Clk : in std_logic;
Q : out std_logic_vector(31 downto 0));
	END COMPONENT;
	
signal data_out : std_logic_vector(31 downto 0);
	
begin

	-- register
	reg: reg32 PORT MAP(
		D => data_in,
		load => IL,
		Clk => Clk,
		Q => data_out
	);

	Opcode<=data_out(31 downto 15);
	DR<=data_out(14 downto 10);
	SA<=data_out(9 downto 5); 
	SB<=data_out(4 downto 0);
	
end Behavioral;