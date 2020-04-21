entity testbench is
generic(size: integer := 3);
end testbench;

architecture test of testbench is

component ci74HC32 is
port(A, B: in bit_vector(size downto 0);
	     Y: out bit_vector(size downto 0));
end component;

signal A, B, Y: bit_vector(size downto 0);

begin

dut: ci74HC32 port map(A, B, Y);

A <= "0000",
	  "0101" after 10 ns,
	  "1111" after 20 ns,
	  "1100" after 30 ns,
	  "1110" after 40 ns;
	  
B <= "1110",
	  "1100" after 10 ns,
	  "1111" after 20 ns,
	  "0101" after 30 ns,
	  "0000" after 40 ns;
	  
end test;