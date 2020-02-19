new_project -name SNG -folder {C:/Projektarbeit/SNG/Quartus/prj/precision_work}
new_impl -name SNG_altera_impl
set_input_dir {C:/Projektarbeit/SNG/Quartus/prj/precision_work}
setup_design -design=SNG
add_input_file -format vhdl -work work {{C:/Projektarbeit/SNG/Quartus/hdl/SNG.vhd}}
add_input_file -format vhdl -work work {{C:/Projektarbeit/SNG/Quartus/hdl/LFSR_8bit.vhd}}
setup_design -manufacturer ALTERA -family {NO_FAMILY}  -part {} -speed {} 
setup_design -edif=TRUE
setup_design -addio=TRUE
setup_design -basename SNG
setup_design -input_delay=0
if [catch {compile} err] {
	puts "Error: Errors found during compilation with Precision Synthesis tool"
	exit -force
} else {
	puts "report_status 20"
	puts "report_status 22"
	if [catch {synthesize} err] {
		puts "Error: Errors found during synthesis with Precision Synthesis tool"
		exit -force
	}
	puts "report_status 90"
	report_timing -all_clocks
	puts "report_status 92"
}
save_impl
puts "report_status 96"
close_project
