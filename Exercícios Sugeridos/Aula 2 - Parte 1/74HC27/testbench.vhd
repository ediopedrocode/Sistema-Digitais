entity testbench is
end testbench;

architecture test of testbench is

component ci74HC27 is
generic(size: integer := 2);
port(A,B,C: in bit_vector(size downto 0);
		  Y: out bit_vector(size downto 0));
end component;

signal A, B, C, Y: bit_vector(2 downto 0);

begin

dut: ci74HC27 port map(A,B,C,Y);

A <= "000",
	  "011" after 10 ns,
	  "110" after 20 ns,
	  "111" after 30 ns;
B <= "001",
	  "100" after 10 ns,
	  "110" after 20 ns,
	  "111" after 30 ns;
C <= "010",
	  "101" after 10 ns,
	  "010" after 20 ns,
	  "000" after 30 ns;
	  
end test;