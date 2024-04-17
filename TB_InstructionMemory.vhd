
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
USE ieee.numeric_std.ALL;
 
ENTITY TB_InstructionMemory IS
END TB_InstructionMemory;
 
ARCHITECTURE behavior OF TB_InstructionMemory IS 
 
    

   --Inputs
   signal ReadAddress : std_logic_vector(31 downto 0) :=  x"003FFFFC";

 	--Outputs
   signal Instruction : std_logic_vector(31 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   u1_TestIM : entity work.InstructionMemory(Behavioral) PORT MAP (
          ReadAddress => ReadAddress,
          Instruction => Instruction
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      
		for I in 0 to 11 loop
				ReadAddress <= x"00400000" or std_logic_vector(to_unsigned(I*4,32));
				wait for 25 ns;
		end loop;

      assert false
		report "END"
		severity failure;
		
   end process;

END;
