
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use IEEE.NUMERIC_STD.ALL;



entity ALU_Control is
    Port ( ALUFunc : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_Control;

architecture Behavioral of ALU_Control is

begin

Operation(3) <= '0';
Operation(2) <= ALUOp(0) or (ALUOp(1) and ALUFunc(1));
Operation(1) <= not ALUOp(1) or not ALUFunc(2);
Operation(0) <= (ALUFunc(3) or ALUFunc(0)) and ALUOp(1);


end Behavioral;

