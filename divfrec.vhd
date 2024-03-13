Library Ieee;
use ieee.std_logic_1164.all;
entity divfrec is
    port
    (	clk    : in  std_logic;
      out1,out2    : buffer std_logic );
end divfrec;



architecture DivisorFR of divfrec is

    Signal count1 : integer range 0 to 7;
    
begin

    Process (clk)
       variable count2 : integer range 0 to 7;

    begin
    
      if (clk' event and clk='1') then
         count1 <= count1 + 1;
          count2 := count2 +1;
          
          if (count1 = 2 )then
             out1 <= not out1;
              count1 <= 0;    
          end if;
			 
          if (count2 =3 ) then
             out2 <= not out2;
              count2 := 0;    
          end if;
			 
     end if;
    end process;
end DivisorFR;