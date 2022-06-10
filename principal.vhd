library ieee ;
use ieee.std_logic_1164.all ;
entity principal is
port (
	input_p: in std_logic ;
	output_p : out std_logic_vector (6 downto 0);
	output_p1 : out std_logic_vector (6 downto 0);
	output_p2 : out std_logic_vector (6 downto 0);
	output_p3 : out std_logic_vector (6 downto 0)
);
end principal;

Architecture arch of principal is
	 signal sign : std_logic ;
	 signal sign1 : integer;
	 signal sign2 : integer;
	 signal sign3 : integer;
	 signal sign4 : integer;
	 
begin
module1 : entity work.Led_blink port map(clck => input_p, pul => sign); 
module2 : entity work.compteur port map(clock => sign, led=>sign1 , led1=>sign2, led2 => sign3, led3 => sign4);
module3 : entity work.dec_7seg port map(digit => sign1, digit1 => sign2, digit2=> sign3, digit4=>sign4, segment1 =>output_p, segments => output_p1, segment2 => output_p2, segment4 =>output_p3);
--module4 : entity work.principal port map(output_p => sign2 , segments1 => output_p1); 
end;