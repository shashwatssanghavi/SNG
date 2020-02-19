/*
 Copyright (C) 2019  Intel Corporation. All rights reserved.
 Your use of Intel Corporation's design tools, logic functions 
 and other software and tools, and any partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Intel Program License 
 Subscription Agreement, the Intel Quartus Prime License Agreement,
 the Intel FPGA IP License Agreement, or other applicable license
 agreement, including, without limitation, that your use is for
 the sole purpose of programming logic devices manufactured by
 Intel and sold by Intel or its authorized distributors.  Please
 refer to the applicable agreement for further details, at
 https://fpgasoftware.intel.com/eula.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Fast Corner delays for the design using part 5CSEBA6U23I7
 with speed grade M, core voltage 1.1V, and temperature 100 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "Stochastic_Number_Generator";
DATE "02/18/2020 14:54:19";
PROGRAM "Quartus Prime";



INPUT seed_in[7];
INPUT clk_in;
INPUT seed_in[2];
INPUT rstn_in;
INPUT seed_in[6];
INPUT seed_in[5];
INPUT seed_in[3];
INPUT seed_in[4];
INPUT seed_in[0];
INPUT seed_in[1];
OUTPUT pn_out;
OUTPUT random_vector[0];
OUTPUT random_vector[1];
OUTPUT random_vector[2];
OUTPUT random_vector[3];
OUTPUT random_vector[4];
OUTPUT random_vector[5];
OUTPUT random_vector[6];
OUTPUT random_vector[7];
OUTPUT ready;

/*Arc definitions start here*/
pos_rstn_in__clk_in__setup:		SETUP (POSEDGE) rstn_in clk_in ;
pos_seed_in[0]__clk_in__setup:		SETUP (POSEDGE) seed_in[0] clk_in ;
pos_seed_in[1]__clk_in__setup:		SETUP (POSEDGE) seed_in[1] clk_in ;
pos_seed_in[2]__clk_in__setup:		SETUP (POSEDGE) seed_in[2] clk_in ;
pos_seed_in[3]__clk_in__setup:		SETUP (POSEDGE) seed_in[3] clk_in ;
pos_seed_in[4]__clk_in__setup:		SETUP (POSEDGE) seed_in[4] clk_in ;
pos_seed_in[5]__clk_in__setup:		SETUP (POSEDGE) seed_in[5] clk_in ;
pos_seed_in[6]__clk_in__setup:		SETUP (POSEDGE) seed_in[6] clk_in ;
pos_seed_in[7]__clk_in__setup:		SETUP (POSEDGE) seed_in[7] clk_in ;
pos_rstn_in__clk_in__hold:		HOLD (POSEDGE) rstn_in clk_in ;
pos_seed_in[0]__clk_in__hold:		HOLD (POSEDGE) seed_in[0] clk_in ;
pos_seed_in[1]__clk_in__hold:		HOLD (POSEDGE) seed_in[1] clk_in ;
pos_seed_in[2]__clk_in__hold:		HOLD (POSEDGE) seed_in[2] clk_in ;
pos_seed_in[3]__clk_in__hold:		HOLD (POSEDGE) seed_in[3] clk_in ;
pos_seed_in[4]__clk_in__hold:		HOLD (POSEDGE) seed_in[4] clk_in ;
pos_seed_in[5]__clk_in__hold:		HOLD (POSEDGE) seed_in[5] clk_in ;
pos_seed_in[6]__clk_in__hold:		HOLD (POSEDGE) seed_in[6] clk_in ;
pos_seed_in[7]__clk_in__hold:		HOLD (POSEDGE) seed_in[7] clk_in ;
pos_clk_in__pn_out__delay:		DELAY (POSEDGE) clk_in pn_out ;
pos_clk_in__random_vector[0]__delay:		DELAY (POSEDGE) clk_in random_vector[0] ;
pos_clk_in__random_vector[1]__delay:		DELAY (POSEDGE) clk_in random_vector[1] ;
pos_clk_in__random_vector[2]__delay:		DELAY (POSEDGE) clk_in random_vector[2] ;
pos_clk_in__random_vector[3]__delay:		DELAY (POSEDGE) clk_in random_vector[3] ;
pos_clk_in__random_vector[4]__delay:		DELAY (POSEDGE) clk_in random_vector[4] ;
pos_clk_in__random_vector[5]__delay:		DELAY (POSEDGE) clk_in random_vector[5] ;
pos_clk_in__random_vector[6]__delay:		DELAY (POSEDGE) clk_in random_vector[6] ;
pos_clk_in__random_vector[7]__delay:		DELAY (POSEDGE) clk_in random_vector[7] ;

ENDMODEL
