
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (31 downto 0);
           ZeroFlag : out  STD_LOGIC
			);
end ALU;

architecture Behavioral of ALU is

signal resultTemp : std_logic_vector(31 downto 0);

begin

process(A,B,S)
  
  begin
  case(S) is
		  when "1100" => -- NOR
			resultTemp <=  A nor B;   
		  when "0000" => -- AND
			resultTemp <= A and B ;
		  when "0001" => -- OR
			resultTemp <= A or B;
		  when "0111" => -- Less Than or Not
				if(signed(A) < signed(B)) then
			 resultTemp <= x"00000001"  ;
				else
			 resultTemp <= x"00000000" ;
				end if; 
		  when "0010" => -- ADD
			 resultTemp <= std_logic_vector(unsigned(A) + unsigned(B)) ; 
		  when "0110" => -- Subtract
		    resultTemp <= std_logic_vector(unsigned(A) - unsigned(B)) ; 
		  when others => null;
		    resultTemp <= x"00000000"; 
	end case; end process;
  
 Y <= resultTemp;
 ZeroFlag <= '1' when resultTemp = x"00000000" else
				 '0';

end Behavioral;

