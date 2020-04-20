entity testbench is
end testbench;

architecture test of testbench is

component ci74HC00 is
port(A, B: in bit_vector(3 downto 0);
		  Y: out bit_vector(3 downto 0));
end component;

signal A, B, Y: bit_vector(3 downto 0);

begin

dut: ci74HC00 port map(A, B, Y);

A <= "0000",
	  "1010" after 10 ns,
	  "0111" after 20 ns,
	  "1100" after 30 ns,
	  "1111" after 40 ns;
	  
B <= "1010",
	  "1110" after 10 ns,
	  "0000" after 20 ns,
	  "1111" after 30 ns,
	  "0101" after 40 ns;
	  
end test;