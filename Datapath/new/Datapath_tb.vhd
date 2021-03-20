LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Datapath_tb IS
END Datapath_tb;
 
ARCHITECTURE behavior OF Datapath_tb IS
COMPONENT Datapath
PORT(
Clk:in std_logic;
data_in:in std_logic_vector(31 downto 0);
const_in:in std_logic_vector(31 downto 0);
ctrl:in std_logic_vector(22 downto 0);
V:out std_logic;
C:out std_logic;
N:out std_logic;
Z:out std_logic;
address_out:out std_logic_vector(31 downto 0);
data_out:out std_logic_vector(31 downto 0)
);
END COMPONENT;
    signal Clk:std_logic:='0';
    signal data_in,const_in:std_logic_vector(31 downto 0):= (others => '0');
    signal ctrl:std_logic_vector(22 downto 0):= (others => '0');
    
    signal V,C,N,Z:std_logic:='0';
    signal address_out,data_out:std_logic_vector(31 downto 0):= (others => '0');
BEGIN

 uut: Datapath PORT MAP (
         Clk=>Clk,
         data_in=>data_in,
         const_in=>const_in,
         ctrl=>ctrl,
         V=>V,
         C=>C,
         N=>N,
         Z=>Z,
         address_out=>address_out,
         data_out=>data_out
         
        );
        
 Clk<=not Clk after 10ns;
   stim_proc: process
   begin
   data_in<=x"19334401";
   wait for 100 ns;
   ctrl<="00000000000000000000011";
   wait for 100 ns;
   data_in<=x"19334400";
   ctrl<="00001000010000100000011";
   wait for 100ns;
   data_in<=x"19334399";
   ctrl<="11111111111111100000011";
   wait for 100 ns;
   const_in<=x"19334401";
   ctrl<="10000100001000010111001";
   
     wait for 100 ns;
   end process;
 --different data transfer and the output changes successfully by setting the control for bits DA,AA,BA,
 --finally new outputs by setting MD select to 0 and using MD select to load const_in 
-- to store new values comming from the function unit.
END;
--
