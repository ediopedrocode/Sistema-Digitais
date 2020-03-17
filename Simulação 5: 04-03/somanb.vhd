-- Aula 04/03/2020 - Sistemas Digitais - 5º
-- CÓDIGO 1 - PRINCIPAL
-- Assunto: contador 4 bits usando "for"
-- Aluno: Édio Pedro
--------------------------------------------
entity somanb is
generic(size: integer := 4);
port(a,b: in bit_vector(size-1 downto 0);
	  s: out bit_vector(size-1 downto 0);
	  cin: in bit;
	  cout: out bit);
end somanb;
--------------------------------------------
architecture soma of somanb is

component adder is
port(a, b, cin: in bit;
	  s, cout: out bit);
end component;

signal carry: bit_vector(size downto 0);

begin

carry(0) <= cin;
cout <= carry(size);

laco: for i in 0 to size-1 generate
	soma: adder port map(a(i),b(i),carry(i),s(i),carry(i+1));
end generate;
	
end soma;