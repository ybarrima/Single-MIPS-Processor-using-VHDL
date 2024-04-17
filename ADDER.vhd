
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity ADDER is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Y : out  STD_LOGIC_VECTOR (31 downto 0));
	end ADDER;

architecture Behavioral of ADDER is


begin

Y <= STD_LOGIC_VECTOR(unsigned(A) + unsigned(B));

end Behavioral;

