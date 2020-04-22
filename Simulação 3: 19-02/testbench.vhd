entity testbench is
end testbench;

architecture test of testbench is

component paridade is
generic(size: integer := 8);
port(entrada : in bit_vector(size-1 downto 0);
 bitParidade : out bit);
end component;

signal input: bit_vector(7 downto 0);
signal bP: bit;

begin

dut: paridade port map(input,bP);

input <= "00000000",
			"01010101" after 10 ns,
			"01011101" after 20 ns,
			"01111101" after 30 ns,
			"01010000" after 40 ns,
			"01000000" after 50 ns,
			"11110101" after 60 ns,
			"11111111" after 70 ns,
			"10000110" after 80 ns,
			"01110011" after 90 ns,
			"11111001" after 100 ns;

end test;