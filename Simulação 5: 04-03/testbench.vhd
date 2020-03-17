entity testbench is
end testbench;

architecture test of testbench is

component checksum is
port(B1,B2,CS: in bit_vector(7 downto 0);
	  saida: out bit);
end component;

begin

dut: checksum port map()