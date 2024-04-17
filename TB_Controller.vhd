
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

--USE ieee.numeric_std.ALL;
 
ENTITY TB_Controller IS
END TB_Controller;
 
ARCHITECTURE behavior OF TB_Controller IS 
 
     
    

   --Inputs
   signal Opcode : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal RegDst : std_logic;
   signal Jump : std_logic;
   signal Branch : std_logic;
   signal MemRead : std_logic;
   signal MemToReg : std_logic;
   signal ALUOp : std_logic_vector(1 downto 0);
   signal MemWrite : std_logic;
   signal ALUSrc : std_logic;
   signal RegWrite : std_logic;
     
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   U1_TestController: entity work.Controller(Behavioral)
	PORT MAP (
          Opcode => Opcode,
          RegDst => RegDst,
          Jump => Jump,
          Branch => Branch,
          MemRead => MemRead,
          MemToReg => MemToReg,
          ALUOp => ALUOp,
          MemWrite => MemWrite,
          ALUSrc => ALUSrc,
          RegWrite => RegWrite
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
	
		Opcode <= "000000"; -- R-type
		wait for 50 ns;
		
		Opcode <= "100011"; -- Load Word
		wait for 50 ns;
		
		Opcode <= "101011"; -- Store Word
		wait for 50 ns;
		
		Opcode <= "000100"; -- Branch Equal
		wait for 50 ns;
		
		Opcode <= "000010"; -- Jump
		wait for 50 ns;
		
		Opcode <= "010101"; -- Anything else
		wait for 50 ns;
	
	
      assert false
			report "End"
				Severity failure;
				
   end process;

END;
