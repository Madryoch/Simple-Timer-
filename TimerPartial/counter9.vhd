
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity counter9 is

port (
			clk100,rst,enable	:in std_logic;
			val	:out	std_logic_vector(3 downto 0);
			incr 	:out std_logic
			
		);

end counter9;

architecture cn9 of counter9 is


signal val2:std_logic_vector(3 downto 0) :="0000";

begin

process (clk100)

begin

	if clk100'event and clk100='1' then
		if rst='1' then
		val2 <= "0000";
		
		incr <='0';
		else if enable='1' then
					if val2="1000" then
					
					incr <= '1';
					end if;
					if val2="1001" then
					val2<="0000";
					incr <= '0';
					else
					val2 <= val2+1;
					
					end if;
				end if;
		end if;	
	end if;

end process;		
val <= val2;



end cn9;

