-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "02/19/2020 11:36:50"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SNG IS
    PORT (
	clk_in : IN std_logic;
	rstn_in : IN std_logic;
	seed_in : IN std_logic_vector(7 DOWNTO 0);
	x : IN std_logic_vector(7 DOWNTO 0);
	random_number : OUT std_logic_vector(7 DOWNTO 0);
	X_q_bitwise : OUT std_logic;
	X_q : OUT std_logic_vector(7 DOWNTO 0);
	probability_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END SNG;

-- Design Ports Information
-- random_number[0]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- random_number[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- random_number[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- random_number[3]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- random_number[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- random_number[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- random_number[6]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- random_number[7]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_q_bitwise	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_q[0]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_q[1]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_q[2]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_q[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_q[4]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_q[5]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_q[6]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_q[7]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- probability_out[0]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- probability_out[1]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- probability_out[2]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- probability_out[3]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- probability_out[4]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- probability_out[5]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- probability_out[6]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- probability_out[7]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seed_in[4]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstn_in	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seed_in[0]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seed_in[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seed_in[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seed_in[3]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seed_in[5]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seed_in[6]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seed_in[7]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SNG IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_rstn_in : std_logic;
SIGNAL ww_seed_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_random_number : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_X_q_bitwise : std_logic;
SIGNAL ww_X_q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_probability_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputCLKENA0_outclk\ : std_logic;
SIGNAL \seed_in[6]~input_o\ : std_logic;
SIGNAL \rstn_in~input_o\ : std_logic;
SIGNAL \seed_in[1]~input_o\ : std_logic;
SIGNAL \seed_in[3]~input_o\ : std_logic;
SIGNAL \seed_in[0]~input_o\ : std_logic;
SIGNAL \seed_in[2]~input_o\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register[7]~2_combout\ : std_logic;
SIGNAL \seed_in[4]~input_o\ : std_logic;
SIGNAL \seed_in[7]~input_o\ : std_logic;
SIGNAL \seed_in[5]~input_o\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register[7]~3_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~6_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~7_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~8_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~9_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~10_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register[7]~0_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~11_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~12_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~13_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~14_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~15_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register[7]~1_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~4_combout\ : std_logic;
SIGNAL \lfsr_inst|lfsr_register~5_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \x_bit_signal~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \sr_reg[0]~0_combout\ : std_logic;
SIGNAL \bit_ones_counter[1]~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \sr_reg[2]~feeder_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \sr_reg[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL sr_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL bit_ones_counter : std_logic_vector(8 DOWNTO 0);
SIGNAL bit_counter : std_logic_vector(8 DOWNTO 0);
SIGNAL \lfsr_inst|lfsr_register\ : std_logic_vector(8 DOWNTO 1);
SIGNAL ALT_INV_bit_counter : std_logic_vector(8 DOWNTO 0);
SIGNAL ALT_INV_bit_ones_counter : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_x[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_seed_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_seed_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_seed_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_seed_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_seed_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_seed_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_seed_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rstn_in~input_o\ : std_logic;
SIGNAL \ALT_INV_seed_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \lfsr_inst|ALT_INV_lfsr_register~14_combout\ : std_logic;
SIGNAL \lfsr_inst|ALT_INV_lfsr_register~11_combout\ : std_logic;
SIGNAL \lfsr_inst|ALT_INV_lfsr_register~7_combout\ : std_logic;
SIGNAL \lfsr_inst|ALT_INV_lfsr_register~4_combout\ : std_logic;
SIGNAL \lfsr_inst|ALT_INV_lfsr_register[7]~3_combout\ : std_logic;
SIGNAL \lfsr_inst|ALT_INV_lfsr_register[7]~2_combout\ : std_logic;
SIGNAL \lfsr_inst|ALT_INV_lfsr_register[7]~1_combout\ : std_logic;
SIGNAL \lfsr_inst|ALT_INV_lfsr_register[7]~0_combout\ : std_logic;
SIGNAL \lfsr_inst|ALT_INV_lfsr_register\ : std_logic_vector(8 DOWNTO 1);

BEGIN

ww_clk_in <= clk_in;
ww_rstn_in <= rstn_in;
ww_seed_in <= seed_in;
ww_x <= x;
random_number <= ww_random_number;
X_q_bitwise <= ww_X_q_bitwise;
X_q <= ww_X_q;
probability_out <= ww_probability_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_bit_counter(8) <= NOT bit_counter(8);
ALT_INV_bit_ones_counter(7) <= NOT bit_ones_counter(7);
ALT_INV_bit_ones_counter(6) <= NOT bit_ones_counter(6);
ALT_INV_bit_ones_counter(5) <= NOT bit_ones_counter(5);
ALT_INV_bit_ones_counter(4) <= NOT bit_ones_counter(4);
ALT_INV_bit_ones_counter(3) <= NOT bit_ones_counter(3);
ALT_INV_bit_ones_counter(2) <= NOT bit_ones_counter(2);
ALT_INV_bit_ones_counter(1) <= NOT bit_ones_counter(1);
ALT_INV_bit_ones_counter(0) <= NOT bit_ones_counter(0);
\ALT_INV_x[5]~input_o\ <= NOT \x[5]~input_o\;
\ALT_INV_x[6]~input_o\ <= NOT \x[6]~input_o\;
\ALT_INV_x[7]~input_o\ <= NOT \x[7]~input_o\;
\ALT_INV_x[4]~input_o\ <= NOT \x[4]~input_o\;
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;
\ALT_INV_x[2]~input_o\ <= NOT \x[2]~input_o\;
\ALT_INV_x[3]~input_o\ <= NOT \x[3]~input_o\;
\ALT_INV_seed_in[7]~input_o\ <= NOT \seed_in[7]~input_o\;
\ALT_INV_seed_in[6]~input_o\ <= NOT \seed_in[6]~input_o\;
\ALT_INV_seed_in[5]~input_o\ <= NOT \seed_in[5]~input_o\;
\ALT_INV_seed_in[3]~input_o\ <= NOT \seed_in[3]~input_o\;
\ALT_INV_seed_in[2]~input_o\ <= NOT \seed_in[2]~input_o\;
\ALT_INV_seed_in[1]~input_o\ <= NOT \seed_in[1]~input_o\;
\ALT_INV_seed_in[0]~input_o\ <= NOT \seed_in[0]~input_o\;
\ALT_INV_rstn_in~input_o\ <= NOT \rstn_in~input_o\;
\ALT_INV_seed_in[4]~input_o\ <= NOT \seed_in[4]~input_o\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\lfsr_inst|ALT_INV_lfsr_register~14_combout\ <= NOT \lfsr_inst|lfsr_register~14_combout\;
\lfsr_inst|ALT_INV_lfsr_register~11_combout\ <= NOT \lfsr_inst|lfsr_register~11_combout\;
\lfsr_inst|ALT_INV_lfsr_register~7_combout\ <= NOT \lfsr_inst|lfsr_register~7_combout\;
\lfsr_inst|ALT_INV_lfsr_register~4_combout\ <= NOT \lfsr_inst|lfsr_register~4_combout\;
\lfsr_inst|ALT_INV_lfsr_register[7]~3_combout\ <= NOT \lfsr_inst|lfsr_register[7]~3_combout\;
\lfsr_inst|ALT_INV_lfsr_register[7]~2_combout\ <= NOT \lfsr_inst|lfsr_register[7]~2_combout\;
\lfsr_inst|ALT_INV_lfsr_register[7]~1_combout\ <= NOT \lfsr_inst|lfsr_register[7]~1_combout\;
\lfsr_inst|ALT_INV_lfsr_register[7]~0_combout\ <= NOT \lfsr_inst|lfsr_register[7]~0_combout\;
\lfsr_inst|ALT_INV_lfsr_register\(8) <= NOT \lfsr_inst|lfsr_register\(8);
\lfsr_inst|ALT_INV_lfsr_register\(7) <= NOT \lfsr_inst|lfsr_register\(7);
\lfsr_inst|ALT_INV_lfsr_register\(6) <= NOT \lfsr_inst|lfsr_register\(6);
\lfsr_inst|ALT_INV_lfsr_register\(5) <= NOT \lfsr_inst|lfsr_register\(5);
\lfsr_inst|ALT_INV_lfsr_register\(4) <= NOT \lfsr_inst|lfsr_register\(4);
\lfsr_inst|ALT_INV_lfsr_register\(3) <= NOT \lfsr_inst|lfsr_register\(3);
\lfsr_inst|ALT_INV_lfsr_register\(2) <= NOT \lfsr_inst|lfsr_register\(2);
\lfsr_inst|ALT_INV_lfsr_register\(1) <= NOT \lfsr_inst|lfsr_register\(1);
ALT_INV_bit_counter(0) <= NOT bit_counter(0);
ALT_INV_bit_counter(1) <= NOT bit_counter(1);
ALT_INV_bit_counter(2) <= NOT bit_counter(2);
ALT_INV_bit_counter(3) <= NOT bit_counter(3);
ALT_INV_bit_counter(4) <= NOT bit_counter(4);
ALT_INV_bit_counter(5) <= NOT bit_counter(5);
ALT_INV_bit_counter(6) <= NOT bit_counter(6);
ALT_INV_bit_counter(7) <= NOT bit_counter(7);

-- Location: IOOBUF_X8_Y0_N53
\random_number[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_inst|lfsr_register\(1),
	devoe => ww_devoe,
	o => ww_random_number(0));

-- Location: IOOBUF_X8_Y0_N2
\random_number[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_inst|lfsr_register\(2),
	devoe => ww_devoe,
	o => ww_random_number(1));

-- Location: IOOBUF_X28_Y0_N36
\random_number[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_inst|lfsr_register\(3),
	devoe => ww_devoe,
	o => ww_random_number(2));

-- Location: IOOBUF_X30_Y0_N36
\random_number[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_inst|lfsr_register\(4),
	devoe => ww_devoe,
	o => ww_random_number(3));

-- Location: IOOBUF_X32_Y0_N19
\random_number[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_inst|lfsr_register\(5),
	devoe => ww_devoe,
	o => ww_random_number(4));

-- Location: IOOBUF_X28_Y0_N19
\random_number[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_inst|lfsr_register\(6),
	devoe => ww_devoe,
	o => ww_random_number(5));

-- Location: IOOBUF_X32_Y0_N2
\random_number[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_inst|lfsr_register\(7),
	devoe => ww_devoe,
	o => ww_random_number(6));

-- Location: IOOBUF_X40_Y0_N53
\random_number[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lfsr_inst|lfsr_register\(8),
	devoe => ww_devoe,
	o => ww_random_number(7));

-- Location: IOOBUF_X30_Y0_N53
\X_q_bitwise~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \x_bit_signal~q\,
	devoe => ww_devoe,
	o => ww_X_q_bitwise);

-- Location: IOOBUF_X36_Y0_N53
\X_q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sr_reg(0),
	devoe => ww_devoe,
	o => ww_X_q(0));

-- Location: IOOBUF_X40_Y0_N19
\X_q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sr_reg(1),
	devoe => ww_devoe,
	o => ww_X_q(1));

-- Location: IOOBUF_X34_Y0_N93
\X_q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sr_reg(2),
	devoe => ww_devoe,
	o => ww_X_q(2));

-- Location: IOOBUF_X38_Y0_N19
\X_q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sr_reg(3),
	devoe => ww_devoe,
	o => ww_X_q(3));

-- Location: IOOBUF_X36_Y0_N36
\X_q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sr_reg(4),
	devoe => ww_devoe,
	o => ww_X_q(4));

-- Location: IOOBUF_X34_Y0_N59
\X_q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sr_reg(5),
	devoe => ww_devoe,
	o => ww_X_q(5));

-- Location: IOOBUF_X40_Y0_N2
\X_q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sr_reg(6),
	devoe => ww_devoe,
	o => ww_X_q(6));

-- Location: IOOBUF_X34_Y0_N42
\X_q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sr_reg(7),
	devoe => ww_devoe,
	o => ww_X_q(7));

-- Location: IOOBUF_X28_Y0_N53
\probability_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => bit_ones_counter(0),
	devoe => ww_devoe,
	o => ww_probability_out(0));

-- Location: IOOBUF_X26_Y0_N59
\probability_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => bit_ones_counter(1),
	devoe => ww_devoe,
	o => ww_probability_out(1));

-- Location: IOOBUF_X8_Y0_N19
\probability_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => bit_ones_counter(2),
	devoe => ww_devoe,
	o => ww_probability_out(2));

-- Location: IOOBUF_X26_Y0_N76
\probability_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => bit_ones_counter(3),
	devoe => ww_devoe,
	o => ww_probability_out(3));

-- Location: IOOBUF_X26_Y0_N42
\probability_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => bit_ones_counter(4),
	devoe => ww_devoe,
	o => ww_probability_out(4));

-- Location: IOOBUF_X4_Y0_N36
\probability_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => bit_ones_counter(5),
	devoe => ww_devoe,
	o => ww_probability_out(5));

-- Location: IOOBUF_X8_Y0_N36
\probability_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => bit_ones_counter(6),
	devoe => ww_devoe,
	o => ww_probability_out(6));

-- Location: IOOBUF_X26_Y0_N93
\probability_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => bit_ones_counter(7),
	devoe => ww_devoe,
	o => ww_probability_out(7));

-- Location: IOIBUF_X89_Y25_N21
\clk_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G10
\clk_in~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~input_o\,
	outclk => \clk_in~inputCLKENA0_outclk\);

-- Location: IOIBUF_X32_Y0_N35
\seed_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seed_in(6),
	o => \seed_in[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\rstn_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstn_in,
	o => \rstn_in~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\seed_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seed_in(1),
	o => \seed_in[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\seed_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seed_in(3),
	o => \seed_in[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\seed_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seed_in(0),
	o => \seed_in[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\seed_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seed_in(2),
	o => \seed_in[2]~input_o\);

-- Location: MLABCELL_X25_Y3_N9
\lfsr_inst|lfsr_register[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register[7]~2_combout\ = ( !\seed_in[2]~input_o\ & ( (!\rstn_in~input_o\ & (!\seed_in[1]~input_o\ & (!\seed_in[3]~input_o\ & !\seed_in[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rstn_in~input_o\,
	datab => \ALT_INV_seed_in[1]~input_o\,
	datac => \ALT_INV_seed_in[3]~input_o\,
	datad => \ALT_INV_seed_in[0]~input_o\,
	dataf => \ALT_INV_seed_in[2]~input_o\,
	combout => \lfsr_inst|lfsr_register[7]~2_combout\);

-- Location: IOIBUF_X40_Y0_N35
\seed_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seed_in(4),
	o => \seed_in[4]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\seed_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seed_in(7),
	o => \seed_in[7]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\seed_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seed_in(5),
	o => \seed_in[5]~input_o\);

-- Location: MLABCELL_X25_Y3_N48
\lfsr_inst|lfsr_register[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register[7]~3_combout\ = ( !\seed_in[5]~input_o\ & ( (!\seed_in[7]~input_o\ & !\seed_in[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_seed_in[7]~input_o\,
	datac => \ALT_INV_seed_in[6]~input_o\,
	dataf => \ALT_INV_seed_in[5]~input_o\,
	combout => \lfsr_inst|lfsr_register[7]~3_combout\);

-- Location: MLABCELL_X25_Y3_N6
\lfsr_inst|lfsr_register~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~6_combout\ = ( \lfsr_inst|lfsr_register\(1) & ( (\seed_in[1]~input_o\) # (\rstn_in~input_o\) ) ) # ( !\lfsr_inst|lfsr_register\(1) & ( (!\rstn_in~input_o\ & \seed_in[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rstn_in~input_o\,
	datab => \ALT_INV_seed_in[1]~input_o\,
	dataf => \lfsr_inst|ALT_INV_lfsr_register\(1),
	combout => \lfsr_inst|lfsr_register~6_combout\);

-- Location: FF_X24_Y3_N35
\lfsr_inst|lfsr_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => \lfsr_inst|lfsr_register~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_inst|lfsr_register\(2));

-- Location: MLABCELL_X25_Y3_N30
\lfsr_inst|lfsr_register~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~7_combout\ = ( \lfsr_inst|lfsr_register\(2) & ( (\seed_in[2]~input_o\) # (\rstn_in~input_o\) ) ) # ( !\lfsr_inst|lfsr_register\(2) & ( (!\rstn_in~input_o\ & \seed_in[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rstn_in~input_o\,
	datab => \ALT_INV_seed_in[2]~input_o\,
	dataf => \lfsr_inst|ALT_INV_lfsr_register\(2),
	combout => \lfsr_inst|lfsr_register~7_combout\);

-- Location: LABCELL_X24_Y3_N54
\lfsr_inst|lfsr_register~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~8_combout\ = ( \lfsr_inst|lfsr_register[7]~3_combout\ & ( \lfsr_inst|lfsr_register~7_combout\ ) ) # ( !\lfsr_inst|lfsr_register[7]~3_combout\ & ( \lfsr_inst|lfsr_register~7_combout\ ) ) # ( \lfsr_inst|lfsr_register[7]~3_combout\ & 
-- ( !\lfsr_inst|lfsr_register~7_combout\ & ( (!\lfsr_inst|lfsr_register[7]~2_combout\ & (\lfsr_inst|lfsr_register[7]~0_combout\ & (\lfsr_inst|lfsr_register[7]~1_combout\))) # (\lfsr_inst|lfsr_register[7]~2_combout\ & ((!\seed_in[4]~input_o\) # 
-- ((\lfsr_inst|lfsr_register[7]~0_combout\ & \lfsr_inst|lfsr_register[7]~1_combout\)))) ) ) ) # ( !\lfsr_inst|lfsr_register[7]~3_combout\ & ( !\lfsr_inst|lfsr_register~7_combout\ & ( (\lfsr_inst|lfsr_register[7]~0_combout\ & 
-- \lfsr_inst|lfsr_register[7]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010101110000001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lfsr_inst|ALT_INV_lfsr_register[7]~2_combout\,
	datab => \lfsr_inst|ALT_INV_lfsr_register[7]~0_combout\,
	datac => \lfsr_inst|ALT_INV_lfsr_register[7]~1_combout\,
	datad => \ALT_INV_seed_in[4]~input_o\,
	datae => \lfsr_inst|ALT_INV_lfsr_register[7]~3_combout\,
	dataf => \lfsr_inst|ALT_INV_lfsr_register~7_combout\,
	combout => \lfsr_inst|lfsr_register~8_combout\);

-- Location: FF_X24_Y3_N56
\lfsr_inst|lfsr_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \lfsr_inst|lfsr_register~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_inst|lfsr_register\(3));

-- Location: LABCELL_X24_Y3_N27
\lfsr_inst|lfsr_register~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~9_combout\ = ( \lfsr_inst|lfsr_register\(3) & ( (\rstn_in~input_o\) # (\seed_in[3]~input_o\) ) ) # ( !\lfsr_inst|lfsr_register\(3) & ( (\seed_in[3]~input_o\ & !\rstn_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_seed_in[3]~input_o\,
	datad => \ALT_INV_rstn_in~input_o\,
	dataf => \lfsr_inst|ALT_INV_lfsr_register\(3),
	combout => \lfsr_inst|lfsr_register~9_combout\);

-- Location: FF_X24_Y3_N29
\lfsr_inst|lfsr_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \lfsr_inst|lfsr_register~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_inst|lfsr_register\(4));

-- Location: LABCELL_X24_Y3_N0
\lfsr_inst|lfsr_register~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~10_combout\ = ( \seed_in[4]~input_o\ & ( (!\rstn_in~input_o\) # (\lfsr_inst|lfsr_register\(4)) ) ) # ( !\seed_in[4]~input_o\ & ( (\lfsr_inst|lfsr_register\(4) & \rstn_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lfsr_inst|ALT_INV_lfsr_register\(4),
	datad => \ALT_INV_rstn_in~input_o\,
	dataf => \ALT_INV_seed_in[4]~input_o\,
	combout => \lfsr_inst|lfsr_register~10_combout\);

-- Location: FF_X24_Y3_N2
\lfsr_inst|lfsr_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \lfsr_inst|lfsr_register~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_inst|lfsr_register\(5));

-- Location: MLABCELL_X25_Y3_N24
\lfsr_inst|lfsr_register[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register[7]~0_combout\ = ( !\lfsr_inst|lfsr_register\(4) & ( !\lfsr_inst|lfsr_register\(2) & ( (!\lfsr_inst|lfsr_register\(1) & (!\lfsr_inst|lfsr_register\(5) & (\rstn_in~input_o\ & !\lfsr_inst|lfsr_register\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lfsr_inst|ALT_INV_lfsr_register\(1),
	datab => \lfsr_inst|ALT_INV_lfsr_register\(5),
	datac => \ALT_INV_rstn_in~input_o\,
	datad => \lfsr_inst|ALT_INV_lfsr_register\(3),
	datae => \lfsr_inst|ALT_INV_lfsr_register\(4),
	dataf => \lfsr_inst|ALT_INV_lfsr_register\(2),
	combout => \lfsr_inst|lfsr_register[7]~0_combout\);

-- Location: MLABCELL_X25_Y3_N33
\lfsr_inst|lfsr_register~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~11_combout\ = ( \seed_in[5]~input_o\ & ( (!\rstn_in~input_o\) # (\lfsr_inst|lfsr_register\(5)) ) ) # ( !\seed_in[5]~input_o\ & ( (\rstn_in~input_o\ & \lfsr_inst|lfsr_register\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rstn_in~input_o\,
	datac => \lfsr_inst|ALT_INV_lfsr_register\(5),
	dataf => \ALT_INV_seed_in[5]~input_o\,
	combout => \lfsr_inst|lfsr_register~11_combout\);

-- Location: LABCELL_X24_Y3_N57
\lfsr_inst|lfsr_register~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~12_combout\ = ( \lfsr_inst|lfsr_register[7]~3_combout\ & ( \lfsr_inst|lfsr_register~11_combout\ ) ) # ( !\lfsr_inst|lfsr_register[7]~3_combout\ & ( \lfsr_inst|lfsr_register~11_combout\ ) ) # ( 
-- \lfsr_inst|lfsr_register[7]~3_combout\ & ( !\lfsr_inst|lfsr_register~11_combout\ & ( (!\lfsr_inst|lfsr_register[7]~2_combout\ & (\lfsr_inst|lfsr_register[7]~0_combout\ & ((\lfsr_inst|lfsr_register[7]~1_combout\)))) # 
-- (\lfsr_inst|lfsr_register[7]~2_combout\ & ((!\seed_in[4]~input_o\) # ((\lfsr_inst|lfsr_register[7]~0_combout\ & \lfsr_inst|lfsr_register[7]~1_combout\)))) ) ) ) # ( !\lfsr_inst|lfsr_register[7]~3_combout\ & ( !\lfsr_inst|lfsr_register~11_combout\ & ( 
-- (\lfsr_inst|lfsr_register[7]~0_combout\ & \lfsr_inst|lfsr_register[7]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010100000111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lfsr_inst|ALT_INV_lfsr_register[7]~2_combout\,
	datab => \lfsr_inst|ALT_INV_lfsr_register[7]~0_combout\,
	datac => \ALT_INV_seed_in[4]~input_o\,
	datad => \lfsr_inst|ALT_INV_lfsr_register[7]~1_combout\,
	datae => \lfsr_inst|ALT_INV_lfsr_register[7]~3_combout\,
	dataf => \lfsr_inst|ALT_INV_lfsr_register~11_combout\,
	combout => \lfsr_inst|lfsr_register~12_combout\);

-- Location: FF_X24_Y3_N59
\lfsr_inst|lfsr_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \lfsr_inst|lfsr_register~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_inst|lfsr_register\(6));

-- Location: LABCELL_X24_Y3_N9
\lfsr_inst|lfsr_register~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~13_combout\ = ( \lfsr_inst|lfsr_register\(6) & ( (\rstn_in~input_o\) # (\seed_in[6]~input_o\) ) ) # ( !\lfsr_inst|lfsr_register\(6) & ( (\seed_in[6]~input_o\ & !\rstn_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seed_in[6]~input_o\,
	datad => \ALT_INV_rstn_in~input_o\,
	dataf => \lfsr_inst|ALT_INV_lfsr_register\(6),
	combout => \lfsr_inst|lfsr_register~13_combout\);

-- Location: FF_X24_Y3_N11
\lfsr_inst|lfsr_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \lfsr_inst|lfsr_register~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_inst|lfsr_register\(7));

-- Location: MLABCELL_X25_Y3_N51
\lfsr_inst|lfsr_register~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~14_combout\ = ( \lfsr_inst|lfsr_register\(7) & ( (\seed_in[7]~input_o\) # (\rstn_in~input_o\) ) ) # ( !\lfsr_inst|lfsr_register\(7) & ( (!\rstn_in~input_o\ & \seed_in[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rstn_in~input_o\,
	datab => \ALT_INV_seed_in[7]~input_o\,
	dataf => \lfsr_inst|ALT_INV_lfsr_register\(7),
	combout => \lfsr_inst|lfsr_register~14_combout\);

-- Location: LABCELL_X24_Y3_N42
\lfsr_inst|lfsr_register~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~15_combout\ = ( \lfsr_inst|lfsr_register[7]~1_combout\ & ( \lfsr_inst|lfsr_register[7]~0_combout\ ) ) # ( !\lfsr_inst|lfsr_register[7]~1_combout\ & ( \lfsr_inst|lfsr_register[7]~0_combout\ & ( ((!\seed_in[4]~input_o\ & 
-- (\lfsr_inst|lfsr_register[7]~3_combout\ & \lfsr_inst|lfsr_register[7]~2_combout\))) # (\lfsr_inst|lfsr_register~14_combout\) ) ) ) # ( \lfsr_inst|lfsr_register[7]~1_combout\ & ( !\lfsr_inst|lfsr_register[7]~0_combout\ & ( ((!\seed_in[4]~input_o\ & 
-- (\lfsr_inst|lfsr_register[7]~3_combout\ & \lfsr_inst|lfsr_register[7]~2_combout\))) # (\lfsr_inst|lfsr_register~14_combout\) ) ) ) # ( !\lfsr_inst|lfsr_register[7]~1_combout\ & ( !\lfsr_inst|lfsr_register[7]~0_combout\ & ( ((!\seed_in[4]~input_o\ & 
-- (\lfsr_inst|lfsr_register[7]~3_combout\ & \lfsr_inst|lfsr_register[7]~2_combout\))) # (\lfsr_inst|lfsr_register~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011101010101010101110101010101010111011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lfsr_inst|ALT_INV_lfsr_register~14_combout\,
	datab => \ALT_INV_seed_in[4]~input_o\,
	datac => \lfsr_inst|ALT_INV_lfsr_register[7]~3_combout\,
	datad => \lfsr_inst|ALT_INV_lfsr_register[7]~2_combout\,
	datae => \lfsr_inst|ALT_INV_lfsr_register[7]~1_combout\,
	dataf => \lfsr_inst|ALT_INV_lfsr_register[7]~0_combout\,
	combout => \lfsr_inst|lfsr_register~15_combout\);

-- Location: FF_X24_Y3_N44
\lfsr_inst|lfsr_register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \lfsr_inst|lfsr_register~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_inst|lfsr_register\(8));

-- Location: MLABCELL_X25_Y3_N3
\lfsr_inst|lfsr_register[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register[7]~1_combout\ = ( !\lfsr_inst|lfsr_register\(6) & ( !\lfsr_inst|lfsr_register\(8) & ( !\lfsr_inst|lfsr_register\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lfsr_inst|ALT_INV_lfsr_register\(7),
	datae => \lfsr_inst|ALT_INV_lfsr_register\(6),
	dataf => \lfsr_inst|ALT_INV_lfsr_register\(8),
	combout => \lfsr_inst|lfsr_register[7]~1_combout\);

-- Location: MLABCELL_X25_Y3_N18
\lfsr_inst|lfsr_register~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~4_combout\ = ( \seed_in[0]~input_o\ & ( \lfsr_inst|lfsr_register\(4) & ( (!\rstn_in~input_o\) # (!\lfsr_inst|lfsr_register\(6) $ (!\lfsr_inst|lfsr_register\(8) $ (!\lfsr_inst|lfsr_register\(3)))) ) ) ) # ( !\seed_in[0]~input_o\ & 
-- ( \lfsr_inst|lfsr_register\(4) & ( (\rstn_in~input_o\ & (!\lfsr_inst|lfsr_register\(6) $ (!\lfsr_inst|lfsr_register\(8) $ (!\lfsr_inst|lfsr_register\(3))))) ) ) ) # ( \seed_in[0]~input_o\ & ( !\lfsr_inst|lfsr_register\(4) & ( (!\rstn_in~input_o\) # 
-- (!\lfsr_inst|lfsr_register\(6) $ (!\lfsr_inst|lfsr_register\(8) $ (\lfsr_inst|lfsr_register\(3)))) ) ) ) # ( !\seed_in[0]~input_o\ & ( !\lfsr_inst|lfsr_register\(4) & ( (\rstn_in~input_o\ & (!\lfsr_inst|lfsr_register\(6) $ (!\lfsr_inst|lfsr_register\(8) $ 
-- (\lfsr_inst|lfsr_register\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001000001101111101110101101000001000101001110101110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rstn_in~input_o\,
	datab => \lfsr_inst|ALT_INV_lfsr_register\(6),
	datac => \lfsr_inst|ALT_INV_lfsr_register\(8),
	datad => \lfsr_inst|ALT_INV_lfsr_register\(3),
	datae => \ALT_INV_seed_in[0]~input_o\,
	dataf => \lfsr_inst|ALT_INV_lfsr_register\(4),
	combout => \lfsr_inst|lfsr_register~4_combout\);

-- Location: LABCELL_X24_Y3_N30
\lfsr_inst|lfsr_register~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lfsr_inst|lfsr_register~5_combout\ = ( \lfsr_inst|lfsr_register[7]~3_combout\ & ( \lfsr_inst|lfsr_register[7]~0_combout\ & ( (!\lfsr_inst|lfsr_register[7]~1_combout\ & (\lfsr_inst|lfsr_register~4_combout\ & ((!\lfsr_inst|lfsr_register[7]~2_combout\) # 
-- (\seed_in[4]~input_o\)))) ) ) ) # ( !\lfsr_inst|lfsr_register[7]~3_combout\ & ( \lfsr_inst|lfsr_register[7]~0_combout\ & ( (!\lfsr_inst|lfsr_register[7]~1_combout\ & \lfsr_inst|lfsr_register~4_combout\) ) ) ) # ( \lfsr_inst|lfsr_register[7]~3_combout\ & ( 
-- !\lfsr_inst|lfsr_register[7]~0_combout\ & ( (\lfsr_inst|lfsr_register~4_combout\ & ((!\lfsr_inst|lfsr_register[7]~2_combout\) # (\seed_in[4]~input_o\))) ) ) ) # ( !\lfsr_inst|lfsr_register[7]~3_combout\ & ( !\lfsr_inst|lfsr_register[7]~0_combout\ & ( 
-- \lfsr_inst|lfsr_register~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111001100000000101010100000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lfsr_inst|ALT_INV_lfsr_register[7]~1_combout\,
	datab => \ALT_INV_seed_in[4]~input_o\,
	datac => \lfsr_inst|ALT_INV_lfsr_register[7]~2_combout\,
	datad => \lfsr_inst|ALT_INV_lfsr_register~4_combout\,
	datae => \lfsr_inst|ALT_INV_lfsr_register[7]~3_combout\,
	dataf => \lfsr_inst|ALT_INV_lfsr_register[7]~0_combout\,
	combout => \lfsr_inst|lfsr_register~5_combout\);

-- Location: FF_X24_Y3_N32
\lfsr_inst|lfsr_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \lfsr_inst|lfsr_register~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lfsr_inst|lfsr_register\(1));

-- Location: IOIBUF_X4_Y0_N52
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LABCELL_X24_Y3_N6
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \lfsr_inst|lfsr_register\(2) & ( (!\x[1]~input_o\) # ((\lfsr_inst|lfsr_register\(1) & !\x[0]~input_o\)) ) ) # ( !\lfsr_inst|lfsr_register\(2) & ( (\lfsr_inst|lfsr_register\(1) & (!\x[0]~input_o\ & !\x[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011111111001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lfsr_inst|ALT_INV_lfsr_register\(1),
	datac => \ALT_INV_x[0]~input_o\,
	datad => \ALT_INV_x[1]~input_o\,
	dataf => \lfsr_inst|ALT_INV_lfsr_register\(2),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X24_Y3_N24
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~0_combout\ & ( (!\x[3]~input_o\ & (((!\x[2]~input_o\) # (\lfsr_inst|lfsr_register\(4))) # (\lfsr_inst|lfsr_register\(3)))) # (\x[3]~input_o\ & (\lfsr_inst|lfsr_register\(4) & ((!\x[2]~input_o\) # 
-- (\lfsr_inst|lfsr_register\(3))))) ) ) # ( !\LessThan0~0_combout\ & ( (!\x[3]~input_o\ & (((\lfsr_inst|lfsr_register\(3) & !\x[2]~input_o\)) # (\lfsr_inst|lfsr_register\(4)))) # (\x[3]~input_o\ & (\lfsr_inst|lfsr_register\(3) & (!\x[2]~input_o\ & 
-- \lfsr_inst|lfsr_register\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011110100010000001111010011010000111111011101000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lfsr_inst|ALT_INV_lfsr_register\(3),
	datab => \ALT_INV_x[2]~input_o\,
	datac => \ALT_INV_x[3]~input_o\,
	datad => \lfsr_inst|ALT_INV_lfsr_register\(4),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X30_Y0_N1
\x[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\x[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\x[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\x[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: LABCELL_X24_Y3_N39
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \lfsr_inst|lfsr_register\(6) & ( \lfsr_inst|lfsr_register\(7) & ( (\x[5]~input_o\ & (\x[6]~input_o\ & (!\x[7]~input_o\ $ (\lfsr_inst|lfsr_register\(8))))) ) ) ) # ( !\lfsr_inst|lfsr_register\(6) & ( \lfsr_inst|lfsr_register\(7) & 
-- ( (!\x[5]~input_o\ & (\x[6]~input_o\ & (!\x[7]~input_o\ $ (\lfsr_inst|lfsr_register\(8))))) ) ) ) # ( \lfsr_inst|lfsr_register\(6) & ( !\lfsr_inst|lfsr_register\(7) & ( (\x[5]~input_o\ & (!\x[6]~input_o\ & (!\x[7]~input_o\ $ 
-- (\lfsr_inst|lfsr_register\(8))))) ) ) ) # ( !\lfsr_inst|lfsr_register\(6) & ( !\lfsr_inst|lfsr_register\(7) & ( (!\x[5]~input_o\ & (!\x[6]~input_o\ & (!\x[7]~input_o\ $ (\lfsr_inst|lfsr_register\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[5]~input_o\,
	datab => \ALT_INV_x[7]~input_o\,
	datac => \lfsr_inst|ALT_INV_lfsr_register\(8),
	datad => \ALT_INV_x[6]~input_o\,
	datae => \lfsr_inst|ALT_INV_lfsr_register\(6),
	dataf => \lfsr_inst|ALT_INV_lfsr_register\(7),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X24_Y3_N21
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \LessThan0~2_combout\ & ( !\lfsr_inst|lfsr_register\(5) $ (\x[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lfsr_inst|ALT_INV_lfsr_register\(5),
	datac => \ALT_INV_x[4]~input_o\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X24_Y3_N51
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \lfsr_inst|lfsr_register\(6) & ( \lfsr_inst|lfsr_register\(7) & ( (!\x[7]~input_o\ & ((!\x[5]~input_o\) # ((!\x[6]~input_o\) # (\lfsr_inst|lfsr_register\(8))))) # (\x[7]~input_o\ & (\lfsr_inst|lfsr_register\(8) & 
-- ((!\x[5]~input_o\) # (!\x[6]~input_o\)))) ) ) ) # ( !\lfsr_inst|lfsr_register\(6) & ( \lfsr_inst|lfsr_register\(7) & ( (!\x[7]~input_o\ & ((!\x[6]~input_o\) # (\lfsr_inst|lfsr_register\(8)))) # (\x[7]~input_o\ & (\lfsr_inst|lfsr_register\(8) & 
-- !\x[6]~input_o\)) ) ) ) # ( \lfsr_inst|lfsr_register\(6) & ( !\lfsr_inst|lfsr_register\(7) & ( (!\x[7]~input_o\ & (((!\x[5]~input_o\ & !\x[6]~input_o\)) # (\lfsr_inst|lfsr_register\(8)))) # (\x[7]~input_o\ & (!\x[5]~input_o\ & 
-- (\lfsr_inst|lfsr_register\(8) & !\x[6]~input_o\))) ) ) ) # ( !\lfsr_inst|lfsr_register\(6) & ( !\lfsr_inst|lfsr_register\(7) & ( (!\x[7]~input_o\ & \lfsr_inst|lfsr_register\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100100011100000110011001111000011001100111110001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[5]~input_o\,
	datab => \ALT_INV_x[7]~input_o\,
	datac => \lfsr_inst|ALT_INV_lfsr_register\(8),
	datad => \ALT_INV_x[6]~input_o\,
	datae => \lfsr_inst|ALT_INV_lfsr_register\(6),
	dataf => \lfsr_inst|ALT_INV_lfsr_register\(7),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X24_Y3_N15
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~2_combout\ & ( (!\LessThan0~4_combout\ & ((!\lfsr_inst|lfsr_register\(5)) # (\x[4]~input_o\))) ) ) # ( !\LessThan0~2_combout\ & ( !\LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_x[4]~input_o\,
	datad => \lfsr_inst|ALT_INV_lfsr_register\(5),
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X24_Y3_N12
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~5_combout\ & ( (\LessThan0~1_combout\ & \LessThan0~3_combout\) ) ) # ( !\LessThan0~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: FF_X24_Y3_N13
x_bit_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \LessThan0~6_combout\,
	ena => \rstn_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_bit_signal~q\);

-- Location: LABCELL_X23_Y3_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( bit_ones_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( bit_ones_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ones_counter(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X23_Y3_N0
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( bit_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~34\ = CARRY(( bit_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_counter(0),
	cin => GND,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X23_Y3_N56
\bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => \Add1~33_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(0));

-- Location: LABCELL_X23_Y3_N3
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( bit_counter(1) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( bit_counter(1) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_counter(1),
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X23_Y3_N5
\bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(1));

-- Location: LABCELL_X23_Y3_N6
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( bit_counter(2) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( bit_counter(2) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_counter(2),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X23_Y3_N8
\bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(2));

-- Location: LABCELL_X23_Y3_N9
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( bit_counter(3) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( bit_counter(3) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_counter(3),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X23_Y3_N11
\bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(3));

-- Location: LABCELL_X23_Y3_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( bit_counter(4) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( bit_counter(4) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_counter(4),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X23_Y3_N14
\bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(4));

-- Location: LABCELL_X23_Y3_N15
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( bit_counter(5) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( bit_counter(5) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_counter(5),
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X23_Y3_N17
\bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(5));

-- Location: LABCELL_X23_Y3_N18
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( bit_counter(6) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( bit_counter(6) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_counter(6),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X23_Y3_N20
\bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(6));

-- Location: LABCELL_X23_Y3_N21
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( bit_counter(7) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( bit_counter(7) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_counter(7),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X23_Y3_N23
\bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(7));

-- Location: LABCELL_X23_Y3_N24
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( bit_counter(8) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_counter(8),
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\);

-- Location: FF_X23_Y3_N26
\bit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(8));

-- Location: LABCELL_X24_Y3_N18
\sr_reg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sr_reg[0]~0_combout\ = (!\rstn_in~input_o\) # (bit_counter(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_counter(8),
	datac => \ALT_INV_rstn_in~input_o\,
	combout => \sr_reg[0]~0_combout\);

-- Location: LABCELL_X24_Y3_N3
\bit_ones_counter[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_ones_counter[1]~0_combout\ = ( \LessThan0~5_combout\ & ( ((!\rstn_in~input_o\) # ((\LessThan0~1_combout\ & \LessThan0~3_combout\))) # (bit_counter(8)) ) ) # ( !\LessThan0~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110011111101111111001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => ALT_INV_bit_counter(8),
	datac => \ALT_INV_rstn_in~input_o\,
	datad => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \bit_ones_counter[1]~0_combout\);

-- Location: FF_X24_Y3_N41
\bit_ones_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => \Add0~1_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	sload => VCC,
	ena => \bit_ones_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ones_counter(0));

-- Location: FF_X25_Y3_N28
\sr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => bit_ones_counter(0),
	sclr => \ALT_INV_rstn_in~input_o\,
	sload => VCC,
	ena => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_reg(0));

-- Location: LABCELL_X23_Y3_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( bit_ones_counter(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( bit_ones_counter(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ones_counter(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X24_Y3_N38
\bit_ones_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => \Add0~5_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	sload => VCC,
	ena => \bit_ones_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ones_counter(1));

-- Location: FF_X25_Y3_N55
\sr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => bit_ones_counter(1),
	sclr => \ALT_INV_rstn_in~input_o\,
	sload => VCC,
	ena => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_reg(1));

-- Location: LABCELL_X23_Y3_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( bit_ones_counter(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( bit_ones_counter(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ones_counter(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X23_Y3_N38
\bit_ones_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	ena => \bit_ones_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ones_counter(2));

-- Location: MLABCELL_X25_Y3_N36
\sr_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sr_reg[2]~feeder_combout\ = bit_ones_counter(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ones_counter(2),
	combout => \sr_reg[2]~feeder_combout\);

-- Location: FF_X25_Y3_N37
\sr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \sr_reg[2]~feeder_combout\,
	sclr => \ALT_INV_rstn_in~input_o\,
	ena => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_reg(2));

-- Location: LABCELL_X23_Y3_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( bit_ones_counter(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( bit_ones_counter(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ones_counter(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X24_Y3_N20
\bit_ones_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => \Add0~13_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	sload => VCC,
	ena => \bit_ones_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ones_counter(3));

-- Location: FF_X25_Y3_N22
\sr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => bit_ones_counter(3),
	sclr => \ALT_INV_rstn_in~input_o\,
	sload => VCC,
	ena => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_reg(3));

-- Location: LABCELL_X23_Y3_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( bit_ones_counter(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( bit_ones_counter(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ones_counter(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X24_Y3_N50
\bit_ones_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => \Add0~17_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	sload => VCC,
	ena => \bit_ones_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ones_counter(4));

-- Location: FF_X25_Y3_N13
\sr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => bit_ones_counter(4),
	sclr => \ALT_INV_rstn_in~input_o\,
	sload => VCC,
	ena => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_reg(4));

-- Location: LABCELL_X23_Y3_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( bit_ones_counter(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( bit_ones_counter(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ones_counter(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X23_Y3_N47
\bit_ones_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	ena => \bit_ones_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ones_counter(5));

-- Location: FF_X25_Y3_N16
\sr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => bit_ones_counter(5),
	sclr => \ALT_INV_rstn_in~input_o\,
	sload => VCC,
	ena => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_reg(5));

-- Location: LABCELL_X23_Y3_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( bit_ones_counter(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( bit_ones_counter(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_ones_counter(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X24_Y3_N23
\bit_ones_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => \Add0~25_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	sload => VCC,
	ena => \bit_ones_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ones_counter(6));

-- Location: MLABCELL_X25_Y3_N42
\sr_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sr_reg[6]~feeder_combout\ = bit_ones_counter(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_ones_counter(6),
	combout => \sr_reg[6]~feeder_combout\);

-- Location: FF_X25_Y3_N43
\sr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	d => \sr_reg[6]~feeder_combout\,
	sclr => \ALT_INV_rstn_in~input_o\,
	ena => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_reg(6));

-- Location: LABCELL_X23_Y3_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( bit_ones_counter(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_ones_counter(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

-- Location: FF_X24_Y3_N53
\bit_ones_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => \Add0~29_sumout\,
	sclr => \sr_reg[0]~0_combout\,
	sload => VCC,
	ena => \bit_ones_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_ones_counter(7));

-- Location: FF_X25_Y3_N46
\sr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputCLKENA0_outclk\,
	asdata => bit_ones_counter(7),
	sclr => \ALT_INV_rstn_in~input_o\,
	sload => VCC,
	ena => \sr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_reg(7));

-- Location: LABCELL_X4_Y7_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


