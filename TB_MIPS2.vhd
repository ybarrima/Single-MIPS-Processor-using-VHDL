
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--USE ieee.numeric_std.ALL;
 
ENTITY TB_MIPS2 IS
END TB_MIPS2;
 
ARCHITECTURE behavior OF TB_MIPS2 IS 
 
    
 
    
   --Inputs
   signal reset : std_logic := '0';
   signal clk_Main : std_logic := '0';

   -- Clock period definitions
   constant clk_Main_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.MIPS(Behavioral)
	PORT MAP (
          reset => reset,
          clk_Main => clk_Main
        );

   -- Clock process definitions
   clk_Main_process :process
   begin
		clk_Main <= '0';
		wait for clk_Main_period/2;
		clk_Main <= '1';
		wait for clk_Main_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_Main_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
