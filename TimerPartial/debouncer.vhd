library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity debouncerT is

port (
			clk100,sig :in std_logic;
			deb_sig:out std_logic
		);
		
end debouncerT;

architecture debT of debouncerT is

signal Q0,Q1,Q2,Q3,Q4,Q5: std_logic;

begin



process(clk100)

begin

if clk100'event and clk100='1' then

Q0<=Sig;

Q1<=Q0;

Q2<=Q1;

Q3<=Q2;

Q4<=Q3;

Q5<=Q4;

end if;

end process;

deb_sig<=Q0 and Q1 and Q2 and Q3 and Q4 and(not Q5);

end debT;

