-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/21/2023 22:21:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ContadorMod4Mealyano
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ContadorMod4Mealyano_vhd_vec_tst IS
END ContadorMod4Mealyano_vhd_vec_tst;
ARCHITECTURE ContadorMod4Mealyano_arch OF ContadorMod4Mealyano_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock_50mhz : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL s_bcd7s_infos : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL s_bcd7s_num : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sentido : STD_LOGIC;
COMPONENT ContadorMod4Mealyano
	PORT (
	clock_50mhz : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	s_bcd7s_infos : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	s_bcd7s_num : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	sentido : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ContadorMod4Mealyano
	PORT MAP (
-- list connections between master ports and signals
	clock_50mhz => clock_50mhz,
	q => q,
	s_bcd7s_infos => s_bcd7s_infos,
	s_bcd7s_num => s_bcd7s_num,
	sentido => sentido
	);

-- clock_50mhz
t_prcs_clock_50mhz: PROCESS
BEGIN
LOOP
	clock_50mhz <= '0';
	WAIT FOR 5000 ps;
	clock_50mhz <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_50mhz;

-- sentido
t_prcs_sentido: PROCESS
BEGIN
	sentido <= '0';
WAIT;
END PROCESS t_prcs_sentido;
END ContadorMod4Mealyano_arch;
