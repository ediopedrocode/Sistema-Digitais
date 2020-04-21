entity ci74HC32 is
generic(size: integer := 3);
port(A, B: in bit_vector(size downto 0);
	     Y: out bit_vector(size downto 0));
end ci74HC32;

architecture bahia of ci74HC32 is
begin

	Y <= A or B;

end bahia;