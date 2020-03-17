-- Aula 19/02/2020 - Sistemas Digitais - 3°
-- CÓDIGO 1 - PRINCIPAL
-- Assunto: Introducao ao uso do Quartus
-- Aluno: Edio Pedro
----------------------------------------------
entity paridade is

generic(size: integer := 24);

port(input : in  bit_vector(size-1 downto 0);
		  bp : out bit);
end paridade;
-----------------------------------------------
architecture belem of paridade is

signal s: bit_vector(size downto 0);

begin

s(0) <= '0';

laco: for i in 0 to size-1 generate
	s(i+1) <= s(i) xor input(i);
end generate;

bp <= s(size);

end belem;