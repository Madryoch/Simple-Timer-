
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DoubleDabble is

port (
			clk:in std_logic;
			b7vinput:in std_logic_vector(6 downto 0);
			b8output:out std_logic_vector(7 downto 0)
			);

end DoubleDabble;

architecture DoD of DoubleDabble is


begin


process (clk)

variable b14:std_logic_vector(14 downto 0):= "000000000000000";
variable b7:std_logic_vector(6 downto 0):= b7vinput;
variable	temp1:std_logic_vector(3 downto 0) :=b14(10 downto 7);


begin

b14:=b14 + b7;

b14(14 downto 1) := b14(13 downto 0);
b14(14 downto 1) := b14(13 downto 0);
b14(14 downto 1) := b14(13 downto 0);
if b14(10 downto 7) > "0100" then
	b14 := b14 + "110000000";
end if;
b14(14 downto 1) := b14(13 downto 0);
if b14(10 downto 7) > "0100" then
	b14 := b14 + "110000000";
end if;
b14(14 downto 1) := b14(13 downto 0);
if b14(10 downto 7) > "0100" then
	b14 := b14 + "110000000";
end if;
b14(14 downto 1) := b14(13 downto 0);
if b14(10 downto 7) > "0100" then
	b14 := b14 + "110000000";
end if;
b14(14 downto 1) := b14(13 downto 0);
if b14(10 downto 7) > "0100" then
	b14 := b14 + "110000000";
end if;



b8output <= b14(14 downto 7);

end process;


end DoD;

