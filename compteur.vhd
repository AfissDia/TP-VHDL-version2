library ieee ;
use ieee . std_logic_1164 .all ;
entity compteur is
port (
clock : in std_logic ;
led : out integer range 0 to 9;
led1 : out integer range 0 to 9;
led2 : out integer range 0 to 9;
led3 : out integer range 0 to 9
);
end;
architecture behav of compteur is
	signal count : integer range 0 to 9;
	signal count1 : integer range 0 to 9;
	signal count2 : integer range 0 to 9;
	signal count3 : integer range 0 to 9;
	begin
	process ( clock )
		begin
		if rising_edge ( clock ) then
			if count1 < 9 then
				count1 <= count1 + 1;
				count <= count;
			
			elsif count1 = 9 then
				count1 <= 0;
				if count < 9 then
					count <= count + 1;
					count2 <= count2;
					
			elsif count = 9 then
				count <= 0;
				if count2 < 9 then
					count2 <= count2 + 1;
					
					elsif count2 = 9 then
							count2 <= 0;
						if count3 < 9 then
							count3 <= count3 + 1;
						else
						count3 <= 0;
						end if;
					end if;
				end if;
			end if;
		end if;
	end process ;
	led <= count ;
	led1 <= count1 ;
	led2 <= count2 ;
	led3 <= count3 ;
end;