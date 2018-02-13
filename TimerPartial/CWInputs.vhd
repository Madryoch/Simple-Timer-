
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity CWInputs is

port (
		clk100,rst,sig,sign:in std_logic;
		b0,b1,b2,b3,b4,b5,b6,b7 :out std_logic_vector(0 downto 0)
		);
		
end CWInputs;

architecture cwi of CWInputs is

component Mux3x8output 

port (
		input1,input2,input3 :in std_logic_vector(7 downto 0);
		sel :in std_logic_vector(1 downto 0);
		b0,b1,b2,b3,b4,b5,b6,b7 :out std_logic_vector(0 downto 0)
		);
end component;

component timer is

port (
		
			clk100,rst,enable	:in std_logic;
			out1,out2,out3	:out	std_logic_vector(7 downto 0)
			
			
		);


end component;

component startStop 

port(
		clk100,sig,rst: in std_logic;
		toggle : out std_logic
		);

end component;

component selector 

port(
		clk100,sign: in std_logic;
		selection : out std_logic_vector(1 downto 0)
		);

end component;

signal vals1,vals2,vals3: std_logic_vector(7 downto 0);
signal tempsel: std_logic_vector(1 downto 0);
signal temptog: std_logic;

begin

S1:startStop port map (clk100,sig,rst,temptog);
S2:timer port map (clk100,rst,temptog,vals1,vals2,vals3);
S3:selector port map (clk100,sign,tempsel);
S4:Mux3x8output port map(vals1,vals2,vals3,tempsel,b0,b1,b2,b3,b4,b5,b6,b7);

end cwi;

