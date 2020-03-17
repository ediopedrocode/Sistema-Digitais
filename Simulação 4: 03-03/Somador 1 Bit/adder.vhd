-- Aula 04/03/2020 - Sistemas Digitais - 5º
-- CÓDIGO 2 - AUXILIAR
-- Assunto: contador 1 bit (component)
-- Aluno: Édio Pedro
--------------------------------------------

entity adder is
port(a, b, cin: in bit;
	  s, cout: out bit);
end adder;

architecture soma of adder is

signal x: bit;

begin
		x <= a xor b;
		s <= cin xor x;
		cout <= (a and b) or (cin and x);
end soma; 