###################################################################

# Created by write_sdc on Thu Oct 19 13:57:01 2023

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_area 0
set_driving_cell -lib_cell INVX1 -library osu05_stdcells [get_ports a]
set_driving_cell -lib_cell INVX1 -library osu05_stdcells [get_ports b]
set_driving_cell -lib_cell INVX1 -library osu05_stdcells [get_ports ci]
set_fanout_load 8 [get_ports s]
set_fanout_load 8 [get_ports co]
set_load -pin_load 0.1 [get_ports s]
set_load -pin_load 0.1 [get_ports co]
set_max_fanout 1 [get_ports a]
set_max_fanout 1 [get_ports b]
set_max_fanout 1 [get_ports ci]
create_clock -name clk  -period 40  -waveform {0 20}
set_clock_latency 0.3  [get_clocks clk]
set_input_delay -clock clk  2  [get_ports a]
set_input_delay -clock clk  2  [get_ports b]
set_input_delay -clock clk  2  [get_ports ci]
set_output_delay -clock clk  1.65  [get_ports s]
set_output_delay -clock clk  1.65  [get_ports co]
