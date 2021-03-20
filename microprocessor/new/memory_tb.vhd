LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY memory_tb IS
END memory_tb;

ARCHITECTURE behavior OF memory_tb IS
COMPONENT memory
Port ( address : in unsigned(31 downto 0);
write_data : in std_logic_vector(31 downto 0);
MemWrite, MemRead : in std_logic;
read_data : out std_logic_vector(31 downto 0));
END COMPONENT;

    signal address:unsigned(31 downto 0):= (others => '0');
    signal write_data:std_logic_vector(31 downto 0):= (others => '0');
    signal MemWrite, MemRead :  std_logic :='0';
    signal read_data: std_logic_vector(31 downto 0):= (others => '0');

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memory PORT MAP (
        address=>address,
        write_data=>write_data,
        MemWrite=>MemWrite,
        MemRead=>MemRead,
        read_data=>read_Data
        
);
   stim_proc: process
   begin
    
   Memwrite <= '1';
address <= X"00000001";
write_data <= X"19334401"; 
MemRead <= '0';
wait for 100 ns;

address <= X"00000002";
write_data <= X"19334402"; 
wait for 100 ns;

address <= X"00000003";
write_data <= X"19334403"; 
wait for 100 ns;

--writing data to 3 different address in memory

MemWrite <= '0';
MemRead <= '1';
address <= X"00000001";

--reading data from the address at X000000001 which should read 19334401
--and correctly shown at the test bench
wait for 100 ns;
		
      wait;
    end process;
    END;