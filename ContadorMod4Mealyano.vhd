library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ContadorMod4Mealyano is
	port(
		sentido : in std_logic;
		clock_50mhz: in std_logic;
		s_bcd7s_num: out std_logic_vector(0 to 6);
		s_bcd7s_infos: out std_logic_vector(0 to 6);
		q: out std_logic_vector(1 downto 0));
end ContadorMod4Mealyano;

architecture A of ContadorMod4Mealyano is

component CLOCK_DIVIDER
	port (clkin : in std_logic;
       clkout : out std_logic
     );
end component;

type State_Type is (S0, S1, S2, S3);
signal estado: State_type;
signal clock_divided: std_logic;
signal contagem: std_logic_vector(1 downto 0);
begin
	q <= contagem;
	with contagem select
		s_bcd7s_num <= "0000001" when "00",
				"1001111" when "01",
				"0010010" when "10",
				"0000110" when "11",
				"1111110" when others;
	s_bcd7s_infos <=	"0110001" WHEN sentido='0' else
			"1000010" WHEN sentido='1' else
			"0110000";
	
	clkdiv: CLOCK_DIVIDER PORT MAP (clock_50mhz, clock_divided);
	process(clock_50mhz, estado, sentido)
	begin
		if (rising_edge(clock_divided)) then
			case (estado) is
				when S0 => 
					if (sentido = '0') then
						estado <= S1;
						contagem <= "01";
					else
						estado <= S3;
						contagem <= "11";
					end if;
				when S1 => 
					if (sentido = '0') then
						estado <= S2;
						contagem <= "10";
					else
						estado <= S0;
						contagem <= "00";
					end if;
				when S2 => 
					if (sentido = '0') then
						estado <= S3;
						contagem <= "11";
					else
						estado <= S1;
						contagem <= "01";
					end if;
				when S3 => 
					if (sentido = '0') then
						estado <= S0;
						contagem <= "00";
					else
						estado <= S2;
						contagem <= "10";
					end if;
			end case;
		end if;
	end process;
end A;


