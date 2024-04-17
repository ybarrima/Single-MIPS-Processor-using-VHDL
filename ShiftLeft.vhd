
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;



entity ShiftLeft is
	 Generic (
	 N : integer := 32
	 ); 
    Port ( INPut : in  STD_LOGIC_VECTOR (N-1 downto 0);
           OUTput : out  STD_LOGIC_VECTOR (N-1 downto 0));
end ShiftLeft;

architecture Behavioral of ShiftLeft is


begin

process (INPut)
begin
OUTPut <= STD_LOGIC_VECTOR(shift_left(unsigned(INPut),2));
end process;
end Behavioral;

