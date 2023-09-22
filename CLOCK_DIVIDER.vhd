LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


entity CLOCK_DIVIDER is
port (clkin : in std_logic;
       clkout : out std_logic
     );
end CLOCK_DIVIDER;

architecture Behavioral of CLOCK_DIVIDER is

signal count : integer :=0;
signal b : std_logic :='0';
begin

 --clk generation.For 50 MHz clock this generates 1 Hz clock.
process(clkin) 
begin
	if(rising_edge(clkin)) then
		count <=count+1;
		if(count = 25000000) then
			b <= not b;
			count <=0;

		end if;
	end if;
clkout<=b;
end process;
end;