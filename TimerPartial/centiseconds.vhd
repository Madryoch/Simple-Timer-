
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity centiseconds is

port (
		
			clk100,rst,enable	:in std_logic;
			values	:out	std_logic_vector(7 downto 0);
			increm 	:out std_logic
			
		);
end centiseconds;



architecture Behavioral of centiseconds is

component counter9
port (
			clk100,rst,enable	:in std_logic;
			val	:out	std_logic_vector(3 downto 0);
			incr 	:out std_logic
			
		);
end component;

component counter9s is

port (
			clk100,rst,enable	:in std_logic;
			val	:out	std_logic_vector(3 downto 0);
			incre 	:out std_logic
			
		);

end component;

signal temp1: std_logic :='1';
signal temp2: std_logic :='0';
signal temp3: std_logic :='0';
signal vect1: std_logic_vector(3 downto 0);
signal vect2: std_logic_vector(3 downto 0);

begin

centiu: counter9 port map (clk100,rst,temp1,vect1,temp2);
centid: counter9s port map (clk100,rst,temp2,vect2,increm);

increm <= temp2 and temp3;
values(3 downto 0) <= vect1;
values(7 downto 4) <=vect2;


end Behavioral;

