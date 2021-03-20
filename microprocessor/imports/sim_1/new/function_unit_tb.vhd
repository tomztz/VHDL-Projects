


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity function_unit_tb is
--  Port ( );
end function_unit_tb;

architecture Behavioral of function_unit_tb is
COMPONENT function_unit
   Port (A,B:in std_logic_vector(31 downto 0);
FS:in std_logic_vector(6 downto 2);

 C:out std_logic;
    V:out std_logic;
    N:out std_logic;
    Z:out std_logic;
    F:out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    signal A,B: std_logic_vector(31 downto 0):= (others => '0');
    signal FS: std_logic_vector(6 downto 2):= (others => '0');
    
    signal C,V,N,Z: std_logic:='0';
    signal F:std_logic_vector(31 downto 0):= (others => '0');
    
    
begin
    uut: function_unit PORT MAP (
          A => A,
          B=>B,
          FS=>FS,
          C=>C,
          V=>V,
          N=>N,
          Z=>Z,
          F=>F
        ); 
    stim_proc: process
       begin
        A<="11111111111111111111111111111100";
   B<="00000000000000000000000000000001";
   FS<="00000";
wait for 10 ns;
    FS<="00101";
   wait for 10 ns;
        FS<="00010";
       wait for 10 ns; 
       FS<="00110";
       wait for 10 ns; 
       FS<="00111";
      wait for 10 ns;  
       FS<="01000";
       wait for 10 ns;  
       FS<="01100";
       wait for 10 ns;  
       FS<="01010";
       wait for 10 ns;  
       FS<="01110";
        wait for 10 ns;  
        FS<="10000";
        wait for 10 ns;
            FS<="11000";
          wait for 10 ns;
            FS<="10100";
        wait for 10 ns;
--functional unit selects either to use the shifter or the ALU,which is 
--controled by the MSB of FS,then we could check against the truth table
--of the shifter and ALU by putting the other 4 bits to the corresponding 
--inputs of them,i.e.FS=00101 should give the result when c_in and S1 for 
--the ALU is 1
--see more in the ALU_tb and shifter_tb 
 
     end process;
    end Behavioral;
