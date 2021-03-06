library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.types.all;

entity processor_core is
	port(
		RESET : in std_logic;
		CLOCK : in std_logic;
		
		PROGRAM_MODE : in std_logic;
		PROGRAM_ADDR : in std_logic_vector(3 downto 0);
		PROGRAM_VAL : in std_logic_vector(7 downto 0);
		PROGRAM_WRITE : in std_logic;
		
		UIN : in std_logic_vector(7 downto 0);
		UCONT : in std_logic;
		
		REG_A : out std_logic_vector(7 downto 0);
		REG_B : out std_logic_vector(7 downto 0);
		REG_OUT : out std_logic_vector(7 downto 0);
		ALU_OUT : out std_logic_vector(7 downto 0);
		CARRY : out std_logic;
		PC_OUT : out std_logic_vector(3 downto 0);
		RAM_ADDR : out std_logic_vector(3 downto 0);
		RAM_VAL : out std_logic_vector(7 downto 0);
		REG_INSTR : out std_logic_vector(7 downto 0);
		CONTROL : out control_word;
		MICRO_INSTR_COUNT : out std_logic_vector(2 downto 0);
		CLOCK_ACT : out std_logic
	);
end entity processor_core;