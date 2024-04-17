
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

--USE ieee.numeric_std.ALL;
 
ENTITY TB_PC IS
END TB_PC;
 
ARCHITECTURE behavior OF TB_PC IS 
 
    

   --Inputs
   signal TB_InPC : std_logic_vector(31 downto 0) := (others => '0');
   signal TB_clk : std_logic := '0';

 	--Outputs
   signal TB_OutPC : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.PC(Behavioral) PORT MAP (
          InPC => TB_InPC,
          OutPC => TB_OutPC,
          clk => TB_clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		TB_clk <= '0';
		wait for clk_period/2;
		TB_clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		TB_InPC  <= x"FFFFFFFF";
		 wait for 50 ns;	
		TB_InPC  <= x"AAAAAAAA";
		 wait for 50 ns;
	   TB_InPC  <= x"DDDDDDDD";
		 wait for 50 ns;
	   TB_InPC  <= x"CCCCCCCC";
		 wait for 50 ns;
		
		assert false
			report "End"
			 severity failure;
			 
      wait;
   end process;

END;
