proc ::setup_project {} {
# -------------------------------------------------------------------------- #
#
# Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, the Altera Quartus II License Agreement,
# the Altera MegaCore Function License Agreement, or other 
# applicable license agreement, including, without limitation, 
# that your use is for the sole purpose of programming logic 
# devices manufactured by Altera and sold by Altera or its 
# authorized distributors.  Please refer to the applicable 
# agreement for further details.
#
# -------------------------------------------------------------------------- #
#
# Quartus II 64-Bit
# Version 15.0.0 Build 145 04/22/2015 SJ Full Version
# Date created = 10:55:55  May 06, 2015
#
# -------------------------------------------------------------------------- #
#
# Notes:
#
# 1) The default values for assignments are stored in the file:
#		top_assignment_defaults.qdf
#    If this file doesn't exist, see file:
#		assignment_defaults.qdf
#
# 2) Altera recommends that you do not modify this file. This
#    file is updated automatically by the Quartus II software
#    and any changes you make may be lost or overwritten.
#
# -------------------------------------------------------------------------- #


set_global_assignment -name FAMILY "MAX 10 FPGA" -tag platform
set_global_assignment -name DEVICE 10M08SAE144C8GES -tag platform
set_global_assignment -name ORIGINAL_QUARTUS_VERSION 15.0.0
set_global_assignment -name PROJECT_CREATION_TIME_DATE "10:55:55  MAY 06, 2015"
set_global_assignment -name LAST_QUARTUS_VERSION 15.0.0
set_global_assignment -name VERILOG_FILE top.v -tag platform
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files -tag platform
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0 -tag platform
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85 -tag platform
set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 2 -tag platform
set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (Verilog)" -tag platform
set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation -tag platform
set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top -tag platform
set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top -tag platform
set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top -tag platform
set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top -tag platform
set_location_assignment PIN_6 -to Arduino_A0 -tag platform
set_location_assignment PIN_7 -to Arduino_A1 -tag platform
set_location_assignment PIN_8 -to Arduino_A2 -tag platform
set_location_assignment PIN_10 -to Arduino_A3 -tag platform
set_location_assignment PIN_11 -to Arduino_A4 -tag platform
set_location_assignment PIN_12 -to Arduino_A5 -tag platform
set_location_assignment PIN_13 -to Arduino_A6 -tag platform
set_location_assignment PIN_14 -to Arduino_A7 -tag platform
set_location_assignment PIN_15 -to JTAGEN -tag platform
set_location_assignment PIN_27 -to Clock -tag platform
set_location_assignment PIN_28 -to DIFFIO_L20N_CLK1N -tag platform
set_location_assignment PIN_29 -to DIFFIO_L20P_CLK1P -tag platform
set_location_assignment PIN_32 -to DIFFIO_L27N_PLL_CLKOUTN -tag platform
set_location_assignment PIN_33 -to DIFFIO_L27P_PLL_CLKOUTP -tag platform
set_location_assignment PIN_38 -to DIFFIO_B1N -tag platform
set_location_assignment PIN_39 -to DIFFIO_B1P -tag platform
set_location_assignment PIN_41 -to DIFFIO_B3N -tag platform
set_location_assignment PIN_43 -to DIFFIO_B3P -tag platform
set_location_assignment PIN_44 -to DIFFIO_B5N -tag platform
set_location_assignment PIN_45 -to DIFFIO_B5P -tag platform
set_location_assignment PIN_46 -to DIFFIO_B7N -tag platform
set_location_assignment PIN_47 -to DIFFIO_B7P -tag platform
set_location_assignment PIN_50 -to DIFFIO_B9N -tag platform
set_location_assignment PIN_52 -to DIFFIO_B9P -tag platform
set_location_assignment PIN_55 -to DIFFIO_B12N -tag platform
set_location_assignment PIN_56 -to DIFFIO_B12P -tag platform
set_location_assignment PIN_57 -to DIFFIO_B14N -tag platform
set_location_assignment PIN_58 -to DIFFIO_B14P -tag platform
set_location_assignment PIN_59 -to DIFFIO_B16N -tag platform
set_location_assignment PIN_60 -to DIFFIO_B16P -tag platform
set_location_assignment PIN_62 -to Arduino_IO8 -tag platform
set_location_assignment PIN_64 -to Arduino_IO9 -tag platform
set_location_assignment PIN_65 -to Arduino_IO10 -tag platform
set_location_assignment PIN_66 -to Arduino_IO11 -tag platform
set_location_assignment PIN_69 -to Arduino_IO12 -tag platform
set_location_assignment PIN_70 -to Arduino_IO13 -tag platform
set_location_assignment PIN_75 -to Arduino_IO1 -tag platform
set_location_assignment PIN_74 -to Arduino_IO0 -tag platform
set_location_assignment PIN_77 -to Arduino_IO3 -tag platform
set_location_assignment PIN_76 -to Arduino_IO2 -tag platform
set_location_assignment PIN_79 -to Arduino_IO4 -tag platform
set_location_assignment PIN_81 -to Arduino_IO5 -tag platform
set_location_assignment PIN_84 -to Arduino_IO6 -tag platform
set_location_assignment PIN_86 -to Arduino_IO7 -tag platform
set_location_assignment PIN_88 -to DIFFIO_R14P_CLK2P -tag platform
set_location_assignment PIN_89 -to DIFFIO_R14N_CLK2N -tag platform
set_location_assignment PIN_90 -to DIFFIO_R16P_CLK3P -tag platform
set_location_assignment PIN_91 -to DIFFIO_R16N_CLK3N -tag platform
set_location_assignment PIN_92 -to DIFFIO_R18P -tag platform
set_location_assignment PIN_93 -to DIFFIO_R18N -tag platform
set_location_assignment PIN_96 -to DIFFIO_R26P_DPCLK3 -tag platform
set_location_assignment PIN_98 -to DIFFIO_R26N_DPCLK2 -tag platform
set_location_assignment PIN_99 -to DIFFIO_R27P -tag platform
set_location_assignment PIN_100 -to DIFFIO_R28P -tag platform
set_location_assignment PIN_101 -to DIFFIO_R27N -tag platform
set_location_assignment PIN_102 -to DIFFIO_R28N -tag platform
set_location_assignment PIN_105 -to DIFFIO_R33P -tag platform
set_location_assignment PIN_106 -to DIFFIO_R33N -tag platform
set_location_assignment PIN_110 -to DIFFIO_T1P -tag platform
set_location_assignment PIN_111 -to DIFFIO_T1N -tag platform
set_location_assignment PIN_113 -to DIFFIO_T4N -tag platform
set_location_assignment PIN_114 -to DIFFIO_T6P -tag platform
set_location_assignment PIN_118 -to DIFFIO_T10P -tag platform
set_location_assignment PIN_119 -to DIFFIO_T10N -tag platform
set_location_assignment PIN_120 -to SWITCH1 -tag platform
set_location_assignment PIN_121 -to RESET_N -tag platform
set_location_assignment PIN_124 -to SWITCH2 -tag platform
set_location_assignment PIN_127 -to SWITCH3 -tag platform
set_location_assignment PIN_130 -to SWITCH4 -tag platform
set_location_assignment PIN_131 -to SWITCH5 -tag platform
set_location_assignment PIN_132 -to LED1 -tag platform
set_location_assignment PIN_134 -to LED2 -tag platform
set_location_assignment PIN_135 -to LED3 -tag platform
set_location_assignment PIN_140 -to LED4 -tag platform
set_location_assignment PIN_141 -to LED5 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_A0 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_A1 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_A2 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_A3 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_A4 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_A5 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_A6 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_A7 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to JTAGEN -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Clock -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_L20N_CLK1N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_L20P_CLK1P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_L27N_PLL_CLKOUTN -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_L27P_PLL_CLKOUTP -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B1N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B1P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B3N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B3P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B5N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B5P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B7N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B7P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B9N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B9P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B12N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B12P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B14N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B14P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B16N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_B16P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO8 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO9 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO10 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO11 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO12 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO13 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO1 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO0 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO3 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO2 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO4 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO5 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO6 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to Arduino_IO7 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R14P_CLK2P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R14N_CLK2N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R16P_CLK3P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R16N_CLK3N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R18P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R18N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R26P_DPCLK3 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R26N_DPCLK2 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R27P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R28P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R27N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R28N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R33P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_R33N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_T1P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_T1N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_T4N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_T6P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_T10P -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to DIFFIO_T10N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to SWITCH1 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to RESET_N -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to SWITCH2 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to SWITCH3 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to SWITCH4 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to SWITCH5 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to LED1 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to LED2 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to LED3 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to LED4 -tag platform
set_instance_assignment -name IO_STANDARD "2.5 V" -to LED5 -tag platform
}
