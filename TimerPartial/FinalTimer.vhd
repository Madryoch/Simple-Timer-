
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FinalTimer is

port (
		clk,sig,sign,bsig: in std_logic;
		b0,b1,b2,b3,b4,b5,b6,b7 :out std_logic_vector(0 downto 0)
		);

end FinalTimer;

architecture ftim of FinalTimer is

component CWInputs 

port (
		clk100,rst,sig,sign:in std_logic;
		b0,b1,b2,b3,b4,b5,b6,b7 :out std_logic_vector(0 downto 0)
		);
		

end component;

component debouncerR 

port (
			clk100,bsig :in std_logic;
			rst:out std_logic
		);
		

end component;

component clockgen 
port (
		clk,rst : in std_logic;
		clk100: out std_logic
		);
		
		

end component;

signal centiclock:std_logic;
signal reset:std_logic:='0';

begin

rs: debouncerR port map ( centiclock,bsig,reset);
cg: clockgen port map(clk ,reset, centiclock);
tc: CWInputs port map(centiclock,reset,sig,sign,b0,b1,b2,b3,b4,b5,b6,b7);


end ftim;

