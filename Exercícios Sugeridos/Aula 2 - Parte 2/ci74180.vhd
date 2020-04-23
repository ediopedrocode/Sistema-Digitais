entity ci74180 is
generic(size: integer := 8);
port(A: in bit_vector(size-1 downto 0);
	  parEntrada, imparEntrada: in bit;
	  parSaida, imparSaida: out bit);
end ci74180;

-------------------------------------------------

architecture ding of ci74180 is

signal temp1, temp2: bit_vector(size downto 0);

begin

temp1(0) <= parEntrada;

laco1: for i in 0 to 7 generate
	temp1(i+1) <= temp1(i) xor A(i);
end generate;

parSaida <= temp1(size);

temp2(0) <= imparEntrada;

laco2: for i in 0 to 7 generate
	temp2(i+1) <= temp2(i) xor A(i);
end generate;

imparSaida <= temp2(size);

end ding;