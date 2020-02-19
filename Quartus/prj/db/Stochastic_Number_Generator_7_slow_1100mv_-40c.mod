


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
