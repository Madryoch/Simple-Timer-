library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity counter9s is

port (
			clk100,rst,enable	:in std_logic;
			val	:out	std_logic_vector(3 downto 0);
			incre 	:out std_logic
			
		);

end counter9s;

architecture cn9s of counter9s is


signal val2:std_logic_vector(3 downto 0) :="0000";

begin

process (clk100)

begin

	if clk100'event and clk100='1' then
		if rst='1' then
		val2 <= "0000";
		
		incre <='0';
		else if enable='1' then
					if val2="1001" then
					val2<="0000";
					else
					val2 <= val2+1;
					end if;
				end if;
		end if;	
	end if;

end process;	



incre <='1' when val2 ="1001" and enable ='1' else '0';
val <= val2;



end cn9s;

