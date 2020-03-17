entity adder2 is
port(a,b: in bit_vector(3 downto 0);
	  s: out bit_vector(3 downto 0);
	  cin: in bit;
	  cout: out bit);
end adder2;

architecture soma of adder2 is

component adder is
port(a, b, cin: in bit;
	  s, cout: out bit);
end component;

signal carrys: bit_vector(4 downto 0);

begin

	s0: adder port map(a(0),b(0),carrys(0),s(0),carrys(1));
	s1: adder port map(a(1),b(1),carrys(1),s(1),carrys(2));
	s2: adder port map(a(2),b(2),carrys(2),s(2),carrys(3));
	s3: adder port map(a(3),b(3),carrys(3),s(3),carrys(4));
	
	carrys(0) <= cin;
	cout <= carrys(4);

end soma;