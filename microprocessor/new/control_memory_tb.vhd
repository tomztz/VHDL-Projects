LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY control_memory_tb IS
END control_memory_tb;
 
ARCHITECTURE behavior OF control_memory_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_memory
    Port (FL : out std_logic; -- 0
RZ : out std_logic; -- 1
RN : out std_logic; -- 2
RC : out std_logic; -- 3
RV : out std_logic; -- 4
MW : out std_logic; -- 5
MM : out std_logic; -- 6
RW : out std_logic; -- 7
MD : out std_logic; -- 8
FS : out std_logic_vector(4 downto 0); -- 9 to 13
MB : out std_logic; -- 14
TB : out std_logic; -- 15
TA : out std_logic; -- 16
TD : out std_logic; -- 17
PL : out std_logic; -- 18
PI : out std_logic; -- 19
IL : out std_logic; -- 20
MC : out std_logic; -- 21
MS : out std_logic_vector(2 downto 0); -- 22 to 24
NA : out std_logic_vector(16 downto 0); -- 25 to 41
IN_CAR : in std_logic_vector(16 downto 0));

    END COMPONENT;
    

   --Inputs
   signal IN_CAR :  std_logic_vector(16 downto 0) := (others => '0');

 	--Outputs
  signal FL :  std_logic := '0';
signal RZ :  std_logic := '0';
signal RN :  std_logic := '0';
signal RC :  std_logic := '0';
signal RV :  std_logic := '0';
signal MW :  std_logic := '0';
signal MM :  std_logic := '0';
signal RW :  std_logic := '0';
signal MD :  std_logic := '0';
signal FS :  std_logic_vector(4 downto 0):= (others => '0');
signal MB :  std_logic := '0';
signal TB :  std_logic := '0';
signal TA :  std_logic := '0';
signal TD :  std_logic := '0';
signal PL :  std_logic := '0';
signal PI :  std_logic := '0';
signal IL :  std_logic := '0';
signal MC :  std_logic := '0';
signal MS :  std_logic_vector(2 downto 0):= (others => '0');
signal NA :  std_logic_vector(16 downto 0):= (others => '0');


BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_memory PORT MAP (
          FL=>FL,  
          RZ=>RZ,
          RN=>RN, 
          RC=>RC, 
          RV=>RV, 
          MW => MW,
          MM => MM,
          RW => RW,
          MD => MD,
          FS => FS,
          MB => MB,
          TB => TB,
          TA => TA,
          TD => TD,
          PL => PL,
          PI => PI,
          IL => IL,
          MC => MC,
          MS => MS,
          NA => NA,
          IN_CAR => IN_CAR
        );
		  
      -- Stimulus process
   stim_proc0: process
   begin		
		
		IN_CAR <= "00000000000000000";
		wait for 100 ns;
		
		-- execute FL while accessing this peace of memory as in screenshot
		
		IN_CAR <= "00000000000001000";
		wait for 100 ns;
		wait;
		-- execute FS while accessing this peace of memory as in screenshot
   end process;

END;