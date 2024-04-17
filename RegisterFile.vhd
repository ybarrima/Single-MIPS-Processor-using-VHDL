
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;



entity RegisterFile is
	 Generic(
	 B : integer := 32;  -- data bits
	 W : integer := 5    --address bits
	 );
	 Port ( ReadReg1 : in  STD_LOGIC_VECTOR (W-1 downto 0);
           ReadReg2 : in  STD_LOGIC_VECTOR (W-1 downto 0);
           WriteReg : in  STD_LOGIC_VECTOR (W-1 downto 0);
           ReadData1 : out STD_LOGIC_VECTOR (B-1 downto 0);
           ReadData2 : out STD_LOGIC_VECTOR (B-1 downto 0);
           WriteData : in STD_LOGIC_VECTOR (B-1  downto 0);
           RegWrite : in  STD_LOGIC;
			  CLK: in STD_LOGIC
			  );
end RegisterFile;

architecture Behavioral of RegisterFile is

type registerFile is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);

signal registers : registerFile:= 
		( --x"00000000",x"00000001",x"00000002",x"00000003", --$zero $at $v0 $v1
		 --x"00000004",x"00000005",x"00000006",x"00000007", --$a0 $a1 $a2 $a3
		 --x"00000008",x"00000009",x"0000000A",x"0000000B", --$t0 $t1 $t2 $t3
		 --x"0000000C",x"0000000D",x"0000000E",x"0000000F", --$t4 $t5 $t6 $t7
		 --x"00000010",x"00000011",x"00000012",x"00000013", --$s0 $s1 $s2 $s3
		 --x"00000014",x"00000015",x"00000016",x"00000017", --$s4 $s5 $s6 $s7
		 --x"00000018",x"00000019",x"0000001A",x"0000001B", --$t8 $t9 $k0 $k1
		 --x"0000001C",x"0000001D",x"0000001E",x"0000001F"  --$gp $sp $fp $ra
			5=>x"0000003C",
			Others=>x"00000000"
		); 

begin 



ReadData1  <=  registers(to_integer(unsigned(ReadReg1)));
ReadData2  <=  registers(to_integer(unsigned(ReadReg2)));

process(RegWrite,CLK)
begin

if (RegWrite ='1' and rising_edge(CLk) ) then
registers (to_integer(unsigned(WriteReg))) <= WriteData;
end if;
end process;


end Behavioral;

