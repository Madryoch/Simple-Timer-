library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity debouncerR is

port (
			clk100,bsig :in std_logic;
			rst:out std_logic
		);
		
end debouncerR;

architecture debR of debouncerR is

signal Q0,Q1,Q2,Q3,Q4,Q5: std_logic;

begin



process(clk100)

begin

if clk100'event and clk100='1' then

Q0<=bsig;

Q1<=Q0;

Q2<=Q1;

Q3<=Q2;

Q4<=Q3;

Q5<=Q4;

end if;

end process;

rst<=Q0 and Q1 and Q2 and Q3 and Q4 and(not Q5);

end debR;


