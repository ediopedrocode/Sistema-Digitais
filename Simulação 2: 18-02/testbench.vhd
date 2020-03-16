-- Aula 18/02/2020 - Sistemas Digitais - 2Ã‚Â°
-- CÓDIGO 2
-- Assunto: CÃƒÂ³digo para teste do arquivo "CI7404"
-- Aluno: Ãƒâ€°dio Pedro
--------------------------------------------------
entity testbench is 
end testbench;

architecture test of testbench is

component CI7404 is
port(a: in bit_vector(5 downto 0);
	  y: out bit_vector(5 downto 0));
end component;

signal entrada: bit_vector(5 downto 0);
signal saida: bit_vector(5 downto 0);

begin

dut: CI7404 port map(entrada,saida);

entrada <= "000000",
			  "001010" after 10 ns,
			  "110100" after 20 ns,
			  "111001" after 30 ns,
			  "000000" after 40 ns;

end test;