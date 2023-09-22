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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "09/21/2023 22:21:05"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ContadorMod4Mealyano IS
    PORT (
	sentido : IN std_logic;
	clock_50mhz : IN std_logic;
	s_bcd7s_num : OUT std_logic_vector(6 DOWNTO 0);
	s_bcd7s_infos : OUT std_logic_vector(6 DOWNTO 0);
	q : OUT std_logic_vector(1 DOWNTO 0)
	);
END ContadorMod4Mealyano;

-- Design Ports Information
-- s_bcd7s_num[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_num[1]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_num[2]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_num[3]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_num[4]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_num[5]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_num[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[0]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[1]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[2]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[5]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_bcd7s_infos[6]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sentido	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50mhz	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ContadorMod4Mealyano IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sentido : std_logic;
SIGNAL ww_clock_50mhz : std_logic;
SIGNAL ww_s_bcd7s_num : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_s_bcd7s_infos : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_50mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_bcd7s_num[0]~output_o\ : std_logic;
SIGNAL \s_bcd7s_num[1]~output_o\ : std_logic;
SIGNAL \s_bcd7s_num[2]~output_o\ : std_logic;
SIGNAL \s_bcd7s_num[3]~output_o\ : std_logic;
SIGNAL \s_bcd7s_num[4]~output_o\ : std_logic;
SIGNAL \s_bcd7s_num[5]~output_o\ : std_logic;
SIGNAL \s_bcd7s_num[6]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[0]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[1]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[2]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[3]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[4]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[5]~output_o\ : std_logic;
SIGNAL \s_bcd7s_infos[6]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \clock_50mhz~input_o\ : std_logic;
SIGNAL \clock_50mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \sentido~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado.S3~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado.S2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado.S1~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado.S0~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \contagem~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL contagem : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_sentido~input_o\ : std_logic;
SIGNAL ALT_INV_contagem : std_logic_vector(1 DOWNTO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sentido <= sentido;
ww_clock_50mhz <= clock_50mhz;
s_bcd7s_num <= ww_s_bcd7s_num;
s_bcd7s_infos <= ww_s_bcd7s_infos;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50mhz~input_o\);
\ALT_INV_sentido~input_o\ <= NOT \sentido~input_o\;
ALT_INV_contagem(1) <= NOT contagem(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y0_N2
\s_bcd7s_num[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_contagem(1),
	devoe => ww_devoe,
	o => \s_bcd7s_num[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\s_bcd7s_num[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_num[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\s_bcd7s_num[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contagem(0),
	devoe => ww_devoe,
	o => \s_bcd7s_num[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\s_bcd7s_num[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_num[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\s_bcd7s_num[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_num[4]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\s_bcd7s_num[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd7s_num[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\s_bcd7s_num[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \s_bcd7s_num[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\s_bcd7s_infos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sentido~input_o\,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\s_bcd7s_infos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sentido~input_o\,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[1]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\s_bcd7s_infos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[2]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\s_bcd7s_infos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\s_bcd7s_infos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sentido~input_o\,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\s_bcd7s_infos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sentido~input_o\,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\s_bcd7s_infos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sentido~input_o\,
	devoe => ww_devoe,
	o => \s_bcd7s_infos[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contagem(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contagem(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock_50mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50mhz,
	o => \clock_50mhz~input_o\);

-- Location: CLKCTRL_G2
\clock_50mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50mhz~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y0_N22
\sentido~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sentido,
	o => \sentido~input_o\);

-- Location: LCCOMB_X10_Y1_N0
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\sentido~input_o\ & (!\estado.S0~q\)) # (!\sentido~input_o\ & ((\estado.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido~input_o\,
	datac => \estado.S0~q\,
	datad => \estado.S2~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X10_Y1_N1
\estado.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.S3~q\);

-- Location: LCCOMB_X10_Y1_N18
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\sentido~input_o\ & (\estado.S3~q\)) # (!\sentido~input_o\ & ((\estado.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido~input_o\,
	datab => \estado.S3~q\,
	datad => \estado.S1~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X10_Y1_N19
\estado.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.S2~q\);

-- Location: LCCOMB_X10_Y1_N16
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\sentido~input_o\ & ((\estado.S2~q\))) # (!\sentido~input_o\ & (!\estado.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido~input_o\,
	datac => \estado.S0~q\,
	datad => \estado.S2~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X10_Y1_N17
\estado.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.S1~q\);

-- Location: LCCOMB_X10_Y1_N14
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\sentido~input_o\ & (!\estado.S1~q\)) # (!\sentido~input_o\ & ((!\estado.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S1~q\,
	datac => \sentido~input_o\,
	datad => \estado.S3~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X10_Y1_N15
\estado.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.S0~q\);

-- Location: LCCOMB_X10_Y1_N24
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = \sentido~input_o\ $ (((\estado.S0~q\ & !\estado.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sentido~input_o\,
	datac => \estado.S0~q\,
	datad => \estado.S3~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X10_Y1_N25
\contagem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem(1));

-- Location: LCCOMB_X10_Y1_N26
\contagem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contagem~0_combout\ = (\estado.S2~q\) # (!\estado.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.S0~q\,
	datad => \estado.S2~q\,
	combout => \contagem~0_combout\);

-- Location: FF_X10_Y1_N27
\contagem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputclkctrl_outclk\,
	d => \contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contagem(0));

-- Location: LCCOMB_X10_Y1_N28
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (contagem(1)) # (contagem(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem(1),
	datad => contagem(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X10_Y1_N30
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!contagem(1) & contagem(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem(1),
	datad => contagem(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X10_Y1_N20
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (contagem(1) & !contagem(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem(1),
	datad => contagem(0),
	combout => \Mux0~1_combout\);

ww_s_bcd7s_num(0) <= \s_bcd7s_num[0]~output_o\;

ww_s_bcd7s_num(1) <= \s_bcd7s_num[1]~output_o\;

ww_s_bcd7s_num(2) <= \s_bcd7s_num[2]~output_o\;

ww_s_bcd7s_num(3) <= \s_bcd7s_num[3]~output_o\;

ww_s_bcd7s_num(4) <= \s_bcd7s_num[4]~output_o\;

ww_s_bcd7s_num(5) <= \s_bcd7s_num[5]~output_o\;

ww_s_bcd7s_num(6) <= \s_bcd7s_num[6]~output_o\;

ww_s_bcd7s_infos(0) <= \s_bcd7s_infos[0]~output_o\;

ww_s_bcd7s_infos(1) <= \s_bcd7s_infos[1]~output_o\;

ww_s_bcd7s_infos(2) <= \s_bcd7s_infos[2]~output_o\;

ww_s_bcd7s_infos(3) <= \s_bcd7s_infos[3]~output_o\;

ww_s_bcd7s_infos(4) <= \s_bcd7s_infos[4]~output_o\;

ww_s_bcd7s_infos(5) <= \s_bcd7s_infos[5]~output_o\;

ww_s_bcd7s_infos(6) <= \s_bcd7s_infos[6]~output_o\;

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;
END structure;


