----------------------------------------------

entity paridade is
generic(size: integer := 8);
port(entrada : in bit_vector(size-1 downto 0);
 bitParidade : out bit);
end paridade;

-----------------------------------------------

architecture bayeux of paridade is

signal temp: bit_vector(size downto 0);

begin

temp(0) <= '0';

laco: for i in 0 to size-1 generate
	temp(i+1) <= temp(i) xor entrada(i);
end generate;

bitParidade <= temp(size);

end bayeux; 

-----------------------------------------------