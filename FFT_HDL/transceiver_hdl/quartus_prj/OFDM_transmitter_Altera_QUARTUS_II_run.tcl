# HDL Coder Downstream Integration Tcl Script

set myTool "Altera QUARTUS II 13.0.1"
set myProject "OFDM_transmitter_quartus"
set myProjectFile "OFDM_transmitter_quartus.qpf"
set myTopLevelEntity "OFDM_transmitter"

set Family "Cyclone II"
set Device "EP2C35F672C8"
set Package ""
set Speed ""
set UseTimeQuest "ON"

# Open existing project
puts "### Open existing $myTool project hdl_prj\/quartus_prj\/OFDM_transmitter_quartus.qpf"
load_package flow
project_open -current_revision $myProject

# Running PostMapTiming
puts "### Running PostMapTiming in $myTool ..."
execute_module -tool fit -args "--early_timing_estimate"
create_timing_netlist
read_sdc
update_timing_netlist
report_clock_fmax_summary
report_timing -npaths 1
report_timing -npaths 3 -file ${myTopLevelEntity}_preroute.tqr
puts "### PostMapTiming Complete."

# Close project
puts "### Close $myTool project."
project_close

