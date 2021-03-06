library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

architecture a1 of prog_counter is
	signal counter_int : unsigned(3 downto 0);
	
	begin
	
	-- Count synchronously / load from bus (jump)
	process(CLOCK, RESET)
	begin
		if RESET = '0' then
			counter_int <= (others => '0');
		elsif rising_edge(CLOCK) then
			if COUNTER_ENABLE = '1' then
				counter_int <= counter_int + 1;
			end if;
			
			if IN_ENABLE = '1'  then
				counter_int <= unsigned(BUS_R);
			end if;
		end if;
	end process;
	
	-- Output val
	OUT_VAL <= std_logic_vector(counter_int);
end architecture a1;