
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity counterc9d is

port (
			clk100,rst,c9u	:in std_logic;
			valc9d	:out	std_logic_vector(3 downto 0);
			csen 	:out std_logic
			
		);

end counterc9d;

architecture c9d of counterc9d is

signal c9d:std_logic;
signal val2:std_logic_vector(3 downto 0) :="0000";

begin

process (clk100)

begin

	if clk100'event and clk100='1' then
		if rst='1' then
		val2 <= "0000";
		
		
		end if;
		
		
		if c9u='1' then
					if val2="1001" then
					
					val2<="0000";
					
					else
					val2 <= val2+1;
					
					end if;
				end if;
		end if;	
	

end process;	

c9d <= '1' when val2="1001" else '0';
	
csen <= c9u and c9d;
valc9d <= val2;

end c9d;

