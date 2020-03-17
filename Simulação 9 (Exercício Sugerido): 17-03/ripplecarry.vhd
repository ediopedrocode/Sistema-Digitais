-- Orientação de "timing simulation" para usar no exercício sugerido do slide: aula 04.
-- Aula 17/03/2020
--------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity ripplecarry is

generic (size: integer := 8); 

port(a,b : in std_logic_vector(size-1 downto 0);
	    s : out std_logic_vector(size-1 downto 0);
	  cin : in std_logic;
	 cout : out std_logic);
end ripplecarry;

architecture bangu of ripplecarry is

component fa is
port(a,b,cin : in std_logic;
      s,cout : out std_logic);
end component;

signal carry : std_logic_vector(size downto 0);

begin

laco: for i in 0 to size-1 generate
	adder: fa port map(a(i),
							 b(i),
							 carry(i),
							 s(i),
							 carry(i+1)
							 );
end generate;

carry(0) <= cin;
cout <= carry(size);

end bangu;