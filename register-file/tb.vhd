LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
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
    END COMPONENT;
    

   --Inputs
   signal src_s : std_logic_vector(4 downto 0):= (others => '0');
   signal des_A0,des_A1,des_A2,des_A3,des_A4 : std_logic := '0';
   signal Clk,data_src : std_logic := '0';
   signal data : std_logic_vector(31 downto 0) := (others => '0');
  

 	--Outputs
   signal reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8,reg9,
   reg10,reg11,reg12,reg13,reg14,reg15,reg16,reg17,reg18,reg19,reg20,reg21,
   reg22,reg23,reg24,reg25,reg26,reg27,reg28,reg29,reg30,reg31: std_logic_vector(31 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
          src_s => src_s,
          des_A0 => des_A0,
          des_A1 => des_A1,
          des_A2 => des_A2,
          des_A3 => des_A3,
          des_A4 => des_A4,
          Clk=>Clk,
          data_src=>data_src,
          data=>data,
          
          reg0=>reg0,
          reg1=>reg1,
          reg2=>reg2,
          reg3=>reg3,
          reg4=>reg4,
          reg5=>reg5,
          reg6=>reg6,
          reg7=>reg7,
          reg8=>reg8,
          reg9=>reg9,
          reg10=>reg10,
          reg11=>reg11,
          reg12=>reg12,
          reg13=>reg13,
          reg14=>reg14,
          reg15=>reg15,
          reg16=>reg16,
          reg17=>reg17,
          reg18=>reg18,
          reg19=>reg19,
          reg20=>reg20,
          reg21=>reg21,
          reg22=>reg22,
          reg23=>reg23,
          reg24=>reg24,
          reg25=>reg25,
          reg26=>reg26,
          reg27=>reg27,
          reg28=>reg28,
          reg29=>reg29,
          reg30=>reg30,
          reg31=>reg31
         
        );
Clk<=not Clk after 5ns;
   stim_proc: process
   begin		
     data_src<='0';
wait for 10 ns;
    des_A0 <= '0';
          des_A1 <= '0';
          des_A2 <='0';
          des_A3 <= '0';
          des_A4<='0';
          data<=x"01270501";
          
wait for 10 ns;
    des_A0 <= '1';
          des_A1 <= '0';
          des_A2 <='0';
          des_A3 <= '0';
          des_A4<='0';
           data<=x"01270500";
          
wait for 10 ns;
    des_A0 <= '0';
          des_A1 <= '1';
          des_A2 <='0';
          des_A3 <= '0';
          des_A4<='0';
          data<=x"012704FF";
          
wait for 10 ns;
    des_A0 <= '1';
          des_A1 <= '1';
          des_A2 <='0';
          des_A3 <= '0';
          des_A4<='0';
          data<=x"012704FE";
 wait for 10 ns;
    des_A0 <= '0';
          des_A1 <= '0';
          des_A2 <='1';
          des_A3 <= '0';
          des_A4<='0';
          data<=x"012704FD";
          
wait for 10 ns;
    des_A0 <= '1';
          des_A1 <= '0';
          des_A2 <='1';
          des_A3 <= '0';
          des_A4<='0';
          data<=x"012704FC";
          
wait for 10 ns;
    des_A0 <= '0';
          des_A1 <= '1';
          des_A2 <='1';
          des_A3 <= '0';
          des_A4<='0';
          data<=x"012704FB";
wait for 10 ns;
    des_A0 <= '1';
          des_A1 <= '1';
          des_A2 <='1';
          des_A3 <= '0';
          des_A4<='0';
          data<=x"012704FA";
          
wait for 10 ns;
    des_A0 <= '0';
          des_A1 <= '0';
          des_A2 <='0';
          des_A3 <= '1';
          des_A4<='0';
          data<=x"012704F9";
wait for 10 ns;
    des_A0 <= '1';
          des_A1 <= '0';
          des_A2 <='0';
          des_A3 <= '1';
          des_A4<='0';
          data<=x"012704F8";
wait for 10 ns;
    des_A0 <= '0';
          des_A1 <= '1';
          des_A2 <='0';
          des_A3 <= '1';
          des_A4<='0';
           data<=x"012704F7";
wait for 10 ns;
    des_A0 <= '0';
          des_A1 <= '0';
          des_A2 <='1';
          des_A3 <= '1';
          des_A4<='0';
          data<=x"012704F6";
 wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '1';
    des_A2 <='0';
    des_A3 <= '1';
    des_A4<='0';
    data<=x"012704F5";
wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '0';
    des_A2 <='1';
    des_A3 <= '1';
    des_A4<='0';
    data<=x"012704F4";
wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    des_A2 <='1';
    des_A3 <= '1';
    des_A4<='0';
    data<=x"012704F3";
wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '1';
    des_A2 <='1';
    des_A3 <= '1';
    des_A4<='0';
    data<=x"012704F2";
wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <='0';
    des_A3 <= '0';
    des_A4<='1';
    data<=x"012704F1";
wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '0';
    des_A2 <='0';
    des_A3 <= '0';
    des_A4<='1';
    data<=x"012704F0";
wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    des_A2 <='0';
    des_A3 <= '0';
    des_A4<='1';
    data<=x"012704EF";
wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <='1';
    des_A3 <= '0';
    des_A4<='1';
    data<=x"012704EE";
wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <='0';
    des_A3 <= '1';
    des_A4<='1';
    data<=x"012704ED";
wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '1';
    des_A2 <='0';
    des_A3 <= '0';
    des_A4<='1';
    data<=x"012704EC";
wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '0';
    des_A2 <='1';
    des_A3 <= '0';
    des_A4<='1';
    data<=x"012704EB";
wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '0';
    des_A2 <='0';
    des_A3 <= '1';
    des_A4<='1';
    data<=x"012704EA";
wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    des_A2 <='1';
    des_A3 <= '0';
    des_A4<='1';
    data<=x"012704E9";
wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    des_A2 <='0';
    des_A3 <= '1';
    des_A4<='1';
    data<=x"012704E8";
wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <='1';
    des_A3 <= '1';
    des_A4<='1';
    data<=x"012704E7";
wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '1';
    des_A2 <='1';
    des_A3 <= '0';
    des_A4<='1';
    data<=x"012704E6";
wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '1';
    des_A2 <='0';
    des_A3 <= '1';
    des_A4<='1';
    data<=x"012704E5";
wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '0';
    des_A2 <='1';
    des_A3 <= '1';
    des_A4<='1';
    data<=x"012704E4";
wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    des_A2 <='1';
    des_A3 <= '1';
    des_A4<='1';
    data<=x"012704E3";
wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '1';
    des_A2 <='1';
    des_A3 <= '1';
    des_A4<='1';
    data<=x"012704E2";
    
    
    
wait for 100 ns;
  data_src<='1'; 
   wait for 100 ns; 
   
   
   src_s<="00000";
   des_A0 <= '1';
    des_A1 <= '1';
    des_A2 <='1';
    des_A3 <= '1';
    des_A4<='1';
 wait for 50 ns;
    
     src_s<="00001";
   des_A0 <= '0';
    des_A1 <= '1';
    des_A2 <='1';
    des_A3 <= '1';
    des_A4<='1';
wait for 50 ns;   
     src_s<="00010";
   des_A0 <= '1';
    des_A1 <= '0';
    des_A2 <='1';
    des_A3 <= '1';
    des_A4<='1';    
    
wait for 50 ns;   
     src_s<="00011";
   des_A0 <= '1';
    des_A1 <= '1';
    des_A2 <='0';
    des_A3 <= '1';
    des_A4<='1'; 

wait for 50 ns;   
     src_s<="00100";
   des_A0 <= '1';
    des_A1 <= '1';
    des_A2 <='1';
    des_A3 <= '0';
    des_A4<='1'; 
    
wait for 50 ns;   
     src_s<="00101";
   des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <='1';
    des_A3 <= '1';
    des_A4<='1'; 
    
wait for 50 ns;   
     src_s<="00110";
   des_A0 <= '0';
    des_A1 <= '1';
    des_A2 <='0';
    des_A3 <= '1';
    des_A4<='1'; 
    
wait for 50 ns;   
     src_s<="00111";
   des_A0 <= '0';
    des_A1 <= '1';
    des_A2 <='1';
    des_A3 <= '0';
    des_A4<='1'; 
    
    wait for 50 ns;   
     src_s<="01000";
   des_A0 <= '1';
    des_A1 <= '0';
    des_A2 <='0';
    des_A3 <= '1';
    des_A4<='1'; 
    
wait for 50 ns;   
     src_s<="01001";
   des_A0 <= '1';
    des_A1 <= '0';
    des_A2 <='1';
    des_A3 <= '0';
    des_A4<='1'; 
 wait for 300ns;   
    
    
   end process;

END;