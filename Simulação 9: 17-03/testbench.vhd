library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture test of testbench is

component ripplecarry is

generic (size: integer := 8); 

port(a,b : in std_logic_vector(size-1 downto 0);
	    s : out std_logic_vector(size-1 downto 0);
	  cin : in std_logic;
	 cout : out std_logic);
end component;

signal  a,b : std_logic_vector(7 downto 0);
signal    s : std_logic_vector(7 downto 0);
signal  cin : std_logic := '0';
signal cout : std_logic;

begin

dut: ripplecarry port map(a,b,s,cin,cout);

a <= "00001011",
	  "00101011" after 20 ns,
	  "00111111" after 40 ns,
	  "00111011" after 60 ns,
	  "00100011" after 80 ns,
	  "00100111" after 100 ns;
b <= "10010101",
	  "00101011" after 20 ns,
	  "00111111" after 40 ns,
	  "00111011" after 60 ns,
	  "00101000" after 80 ns,
	  "00101011" after 100 ns;
	  
end test;