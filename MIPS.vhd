
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


entity MIPS is
    Port ( reset : in  STD_LOGIC;
           clk_Main : in  STD_LOGIC := '0');
end MIPS;

architecture Behavioral of MIPS is

	signal se_out : STD_LOGIC_VECTOR (31 downto 0) ;
	signal reg2 : STD_LOGIC_VECTOR (31 downto 0) ;
	signal ALUInput2 : STD_LOGIC_VECTOR (31 downto 0) ;
	signal ALUSrcSignal : STD_LOGIC ;
	
	signal InstructionfromMUX : STD_LOGIC_VECTOR (4 downto 0) ;
	signal RegWriteControl : STD_LOGIC;
	signal WriteDataa: STD_LOGIC_VECTOR (31 downto 0);
	signal reg1: STD_LOGIC_VECTOR (31 downto 0);
	
	signal InstructionOut: STD_LOGIC_VECTOR (31 downto 0);
	signal RegDstSignal : STD_LOGIC ;
	
	
	signal PCout : STD_LOGIC_VECTOR (31 downto 0) ;
	
	signal ALUOpSignal : STD_LOGIC_VECTOR (1 downto 0) ;
	signal ALUOperation : STD_LOGIC_VECTOR (3 downto 0) ;
	
	signal ALUOutput : STD_LOGIC_VECTOR (31 downto 0) ;
	signal ZeroFlagSignal : STD_LOGIC ;
	
	signal MemReadSignal : STD_LOGIC ;
	signal MemWriteSignal : STD_LOGIC ;
	signal ReadDataMemory : STD_LOGIC_VECTOR (31 downto 0) ;
	
	signal MemtoRegSignal : STD_LOGIC ;
	signal JumpSignal : STD_LOGIC ;
	signal BranchSignal : STD_LOGIC ;
	
	signal InPCSignal : STD_LOGIC_VECTOR (31 downto 0) ;
	
	Signal PCADDEROutput : STD_LOGIC_VECTOR (31 downto 0);
	Signal shiftleftOutput : STD_LOGIC_VECTOR (31 downto 0);
	Signal SecondAdderOutput : STD_LOGIC_VECTOR (31 downto 0);
	Signal BranchMuxOutput : STD_LOGIC_VECTOR (31 downto 0);
	
	Signal shiftleftInput2 : STD_LOGIC_VECTOR (27 downto 0);
	Signal shiftleftOutput2 : STD_LOGIC_VECTOR (27 downto 0);
	
	signal BranchMuxControl : STD_Logic ;
	Signal ADDERiNPUT2 : STD_LOGIC_VECTOR (31 downto 0);
			 
	
	
	
	
begin


-- instantiating THE ALU MUX
	U1: entity work.MUX_2_to_1(Behavioral)
		port map(
			  A => reg2,
			  B => se_out,
			  S => ALUSrcSignal,
			  Y => ALUInput2
		);
		
-- instantiating THE SIGN EXTENDER
	U2: entity work.SignExtend(Behavioral)
	   port map(
			se_in => InstructionOut(15 downto 0),
			se_out=> se_out
		);
		
-- instantiating THE RegisterFile	
	U3: entity work.RegisterFile(Behavioral)
		port map(
			  ReadReg1 => InstructionOut(25 downto 21),
           ReadReg2 => InstructionOut(20 downto 16),
           WriteReg => InstructionfromMUX,
           ReadData1 => reg1,
           ReadData2 => reg2,
			  CLK => clk_main,
           WriteData => WriteDataa,
           RegWrite => RegWriteControl
			);
			
-- instantiating THE Instruction MUX
	U4: entity work.MUX_2_to_1(Behavioral)
		Generic map (N => 5)
		port map(
			  A => InstructionOut(20 downto 16),
			  B => InstructionOut(15 downto 11),
			  S => RegDstSignal,
			  Y => InstructionfromMUX
		);
	
	U5: entity work.InstructionMemory(Behavioral)
		port map(
					ReadAddress => PCout,
					Instruction =>InstructionOut
		);
	
	U6: entity work.ALU_Control(Behavioral)
	   port map(
					ALUFunc => InstructionOut(5 downto 0),
					ALUOp => ALUOpSignal,
					Operation => ALUOperation
		);
	
	U7: entity work.ALU(Behavioral)
	   port map(
					A => reg1,
					B => ALUInput2,
					S => ALUOperation,
					Y => ALUOutput,
					ZeroFlag => ZeroFlagSignal
		);
		
	U8: entity work.DataMemory(Behavioral)
	   port map(
					Address => ALUOutput,
					WriteData => reg2,
					MemRead =>  MemReadSignal,
					MemWrite => MemWriteSignal,
					ReadData => ReadDataMemory,
					CLK => clk_Main
		);
		
	U9: entity work.MUX_2_to_1(Behavioral)
		port map(
					A => ALUOutput,
					B => ReadDataMemory,
					S => MemtoRegSignal,
					Y => WriteDataa
		);
		
	U10: entity work.Controller(Behavioral)
		port map(
					Opcode => InstructionOut(31 downto 26),
					RegDst => RegDstSignal,
					Jump => JumpSignal,
					Branch => BranchSignal,
					MemRead => MemReadSignal,
					MemToReg => MemToRegSignal,
					ALUOp => ALUOpSignal,
					MemWrite => MemWriteSignal,
					ALUSrc => ALUSrcSignal,
					RegWrite => RegWriteControl
				);
		
	U11 : entity work.PC(Behavioral)
		port map(
					InPC => InPCSignal,
					OutPC => PCOut,
					clk => clk_Main
		);
		
	U12 : entity work.ADDER(Behavioral)
		port map(
					A => PCOut,
					B => x"00000004",
					Y => PCADDEROutput
		);
		
	U13 : entity work.ShiftLeft(Behavioral)
		port map(
					INPut => se_out,
					OUTput => shiftleftOutput
		);
		
	U14 : entity work.ADDER(Behavioral)
		port map(
					A => PCADDEROutput,
					B => shiftleftOutput,
					Y => SecondAdderOutput
		);
		
	
	
	U15 : entity work.MUX_2_to_1(Behavioral)
		port map(
					A => PCADDEROutput,
					B => SecondAdderOutput,
					S => ZeroFlagSignal and BranchSignal,
					Y => BranchMuxOutput
		);
		
	shiftleftInput2 <= "00" & InstructionOut(25 downto 0);
	
	U16 : entity work.ShiftLeft(Behavioral)
		Generic map (N => 28)
		port map(
					INPut => shiftleftInput2,
					OUTput => shiftleftOutput2
		);
		
	ADDERiNPUT2 <= PCADDEROutput(31 downto 28) & shiftleftOutput2 ;
	
	U17 : entity work.MUX_2_to_1(Behavioral)
		port map(
					A => BranchMuxOutput,
					B => ADDERiNPUT2,
					S => JumpSignal,
					Y => InPCSignal
		);
		
		
	
	

end Behavioral;

