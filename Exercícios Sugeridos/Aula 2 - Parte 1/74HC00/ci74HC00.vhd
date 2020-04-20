entity ci74HC00 is
port(A, B: in bit_vector(3 downto 0);
		  Y: out bit_vector(3 downto 0));
end ci74HC00;

architecture miami of ci74HC00 is
begin

	Y <= A nand B;

end miami; 