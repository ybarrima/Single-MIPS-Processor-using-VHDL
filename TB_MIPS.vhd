
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

--USE ieee.numeric_std.ALL;
 
ENTITY TB_MIPS IS
END TB_MIPS;
 
ARCHITECTURE behavior OF TB_MIPS IS 
 
    
 
  
    

   --Inputs
   signal tb_reset : std_logic := '0';
   signal tb_clk : std_logic := '0';

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.MIPS(Behavioral)
	PORT MAP (
          reset => tb_reset,
          clk_main => tb_clk
        );

   -- Clock process definitions
   clk_main_process :process
   begin
		tb_clk <= '0';
		wait for clk_period/2;
		tb_clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		

      
      wait for clk_period*10;
		
      -- insert stimulus here 
		
		assert false
		 report "End"
			severity failure;
      wait;
   end process;

END;
