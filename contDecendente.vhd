library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity contDecendente is 
	port (clk : in std_logic;
			entrada : in std_logic;
			contador : out std_logic_vector (5 downto 0);
			senal : out std_logic );
end contDecendente;


architecture arqAcen of contDecendente is

	signal senal1 : integer range  0 to 35;

begin
	 
	senal1 : integer <= '35' ;

	cont : process (clk, senal1)
	begin 
	
		if (entrada = '0') then
			senal1 <= 0;
		elsif (clk' event and clk ='1') then
			if (entrada = '1') then 
				if (senal1 = 35) then 
					senal1 <= 0;
				else 
				senal1 <= senal1 - 1;
				end if;
		end if;
		end if;
		
	end process;
	
	contador <= std_logic_vector(to_unsigned(senal1 , 6));

end arqAcen;