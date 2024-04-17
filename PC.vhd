
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use IEEE.NUMERIC_STD.ALL;


entity PC is
    Port ( InPC : in  STD_LOGIC_VECTOR (31 downto 0);
           OutPC : out  STD_LOGIC_VECTOR (31 downto 0);
			  clk : in STD_LOGIC);
end PC;

architecture Behavioral of PC is

signal sig: STD_LOGIC_VECTOR(31 downto 0) := x"00000000";

	
begin

process(InPC,clk)
			begin
			 if(rising_edge(clk)) then
				OutPC <= sig;
			 elsif(falling_edge(clk)) then
				sig <= inPC;
			end if;
end process;
end Behavioral;

