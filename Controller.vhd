
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;



entity Controller is
	port( 	Opcode: in STD_LOGIC_VECTOR( 5 downto 0 );
				RegDst: Out STD_LOGIC;
				Jump: Out STD_LOGIC;
				Branch: Out STD_LOGIC;
				MemRead: Out STD_LOGIC;
				MemToReg: Out STD_LOGIC;
				ALUOp: Out STD_LOGIC_vector( 1 downto 0 );
				MemWrite: Out STD_LOGIC;
				ALUSrc: Out STD_LOGIC;
				RegWrite: Out STD_LOGIC
	);
end Controller;

architecture Behavioral of Controller is

begin

	process(Opcode)
	begin
	
		
		
		case Opcode is
		
		when "000000" => -- R-type
		RegDst <= '1';
		Jump <= '0';
		Branch <= '0';
		MemRead <= '0';
		MemToReg <= '0';
		ALUOp <= "10";
		MemWrite <= '0';
		ALUSrc <= '0';	
		RegWrite <= '1' after 10 ns;
		
		when "100011" => -- Load word
		RegDst <= '0';
		Jump <= '0';
		Branch <= '0';
		MemRead <= '1';
		MemToReg <= '1';
		ALUOp <= "00";
		MemWrite <= '0';
		ALUSrc <= '1';
		RegWrite <= '1';
		
		when "101011" => -- Store Word
		RegDst <= 'X';
		Jump <= '0';
		Branch <= '0';
		MemRead <= '0';
		MemToReg <= 'X';
		ALUOp <= "00";
		MemWrite <= '1';
		ALUSrc <= '1';
		RegWrite <= '0';
		
		when "000100" => -- Branch Equal
		RegDst <= 'X';
		Jump <= '0';
		Branch <= '1';
		MemRead <= '0';
		MemToReg <= 'X';
		ALUOp <= "01";
		MemWrite <= '0';
		ALUSrc <= '0';
		RegWrite <= '0';
		
		when "001000" => -- Addi
		RegDst <= '0';
		Jump <= '0';
		Branch <= '0';
		MemRead <= '0';
		MemToReg <= '0';
		ALUOp <= "00";
		MemWrite <= '0';
		ALUSrc <= '1';
		RegWrite <= '1';
		
		when "000010" => -- Jump
		RegDst <= 'X';
		Jump <= '1';
		Branch <= '0';
		MemRead <= '0';
		MemToReg <= 'X';
		ALUOp <= "XX";
		MemWrite <= '0';
		ALUSrc <= 'X';
		RegWrite <= '0';
		
		when others => null;
		RegDst <= '0';
		Jump <= '0';
		Branch <= '0';
		MemRead <= '0';
		MemToReg <= '0';
		ALUOp <= "00";
		MemWrite <= '0';
		ALUSrc <= '0';
		RegWrite <= '0';
	
	end case;
  end process;
  




end Behavioral;

