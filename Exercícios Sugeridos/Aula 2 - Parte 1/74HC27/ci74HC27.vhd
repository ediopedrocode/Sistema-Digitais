entity ci74HC27 is
generic(size: integer := 2);
port(A,B,C: in bit_vector(size downto 0);
		  Y: out bit_vector(size downto 0));
end ci74HC27;

architecture rio of ci74HC27 is
begin

	Y <= not (A or B or C);

end rio;