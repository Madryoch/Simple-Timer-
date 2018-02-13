library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity csec is

port (
		
			clk100,rst,enable	:in std_logic;
			centisecs	:out	std_logic_vector(7 downto 0);
			csen 	:out std_logic
			
		);

end csec;

architecture csc of csec is

component counter9 

port (
			clk100,rst,enable	:in std_logic;
			valc9u	:out	std_logic_vector(3 downto 0);
			c9u 	:out std_logic
			
		);

end component;

component counterc9d 

port (
			clk100,rst,c9u	:in std_logic;
			valc9d	:out	std_logic_vector(3 downto 0);
			csen 	:out std_logic
			
		);


end component;

signal vec1:std_logic_vector( 3 downto 0);
signal vec2:std_logic_vector( 3 downto 0);
signal temp:std_logic;

begin

cu:	counter9 port map (clk100,rst,enable,vec1,temp);
cd:	counterc9d port map (clk100,rst,temp,vec2,csen);

centisecs(3 downto 0) <= vec1;
centisecs(7 downto 4) <=vec2;

end csc;

