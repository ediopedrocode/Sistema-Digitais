entity testbench is
generic(size: integer := 8);
end testbench;

architecture test of testbench is

component ci74180 is
port(A: in bit_vector(size-1 downto 0);
	  parEntrada, imparEntrada: in bit;
	  parSaida, imparSaida: out bit);
end component;

signal entrada: bit_vector(size-1 downto 0);
signal parEntrada, imparEntrada: bit;
signal parSaida, imparSaida: bit;

begin

dut: ci74180 port map(entrada, parEntrada, imparEntrada, parSaida, imparSaida);

entrada <= "00000000",
			  "00000000" after 10 ns,
			  "11010101" after 20 ns,
			  "11010101" after 30 ns,
			  "11110000" after 40 ns,
			  "11110000" after 50 ns,
			  "11000101" after 60 ns,
			  "11000101" after 70 ns,
			  "00011100" after 80 ns,
			  "00011100" after 90 ns,
			  "11111111" after 100 ns,
			  "11111111" after 110 ns,
			  "10001001" after 120 ns,
			  "10001001" after 130 ns;
			  
parEntrada <= '0',
				  '1' after 10 ns,
				  '0' after 20 ns,
				  '1' after 30 ns,
				  '0' after 40 ns,
				  '1' after 50 ns,
				  '0' after 60 ns,
				  '1' after 70 ns,
				  '0' after 80 ns,
				  '1' after 90 ns,
				  '0' after 100 ns,
				  '1' after 110 ns,
				  '0' after 120 ns,
				  '1' after 130 ns;
				  
imparEntrada <= '1',
					 '0' after 10 ns,
					 '1' after 20 ns,
				    '0' after 30 ns,
				    '1' after 40 ns,
				    '0' after 50 ns,
				    '1' after 60 ns,
				    '0' after 70 ns,
				    '1' after 80 ns,
				    '0' after 90 ns,
				    '1' after 100 ns,
				    '0' after 110 ns,
				    '1' after 120 ns,
				    '0' after 130 ns;

end test;