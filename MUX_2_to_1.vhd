
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;


entity MUX_2_to_1 is
	 Generic (
	 N : integer := 32
	 );
    Port ( A : in  STD_LOGIC_Vector(N-1 downto 0);
           B : in  STD_LOGIC_VECTOR(N-1 downto 0);
           S : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR(N-1 downto 0)
			  );
end MUX_2_to_1;

architecture Behavioral of MUX_2_to_1 is

begin

Y <= A when S = '0' else
     B;

end Behavioral;

