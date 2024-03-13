library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity contAcendente is 
	port (clk , reset : in std_logic;
			entrada : in std_logic;
			contador : out std_logic_vector (5 downto 0);
			senal : out std_logic );
end contAcendente;


architecture arqAcen of contAcendente is

	signal senalCONT : integer range  0 to 59;

begin

	cont : process (clk, reset)
	begin 
	
		if (reset = '0') then
			senalCONT <= 0;
		elsif (clk' event and clk ='1') then
			
			if (entrada = '1') then 
				if (senalCONT = 59) then 
					senalCONT <= 0;
				else 
				senalCONT <= senalCONT + 1;
				end if;
		end if;
		end if;
		
	end process;
	
	contador <= std_logic_vector(to_unsigned(senalCONT , 6));

end arqAcen;