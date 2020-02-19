onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sng_tb/clk_in
add wave -noupdate /sng_tb/half_period
add wave -noupdate /sng_tb/rstn_in
add wave -noupdate /sng_tb/x_signal
add wave -noupdate /sng_tb/seed_in
add wave -noupdate /sng_tb/X_q
add wave -noupdate /sng_tb/random_number
add wave -noupdate /sng_tb/X_q_bitwise
add wave -noupdate /sng_tb/clk_counter
add wave -noupdate /sng_tb/probability_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {146 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {144 ns} {240 ns}
