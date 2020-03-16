-- Aula 18/02/2020 - Sistemas Digitais - 2Â°
-- CÃ“DIGO 1 - PRINCIPAL
-- Assunto: Mesmo cÃ³digo da semana passada, mas utilizando bit_vector
-- Aluno: Ã‰dio Pedro
--------------------------------------------------------------------
entity CI7404 is
port(a: in bit_vector(5 downto 0);
	  y: out bit_vector(5 downto 0));
end CI7404;

architecture premero of ci7404 is 
begin

	y <= not a;

end premero;