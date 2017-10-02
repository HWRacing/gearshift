`define ENABLE_SWITCH
`define ENABLE_LED
`define ENABLE_ARDUINO
`define ENABLE_JTAG
`define ENABLE_DIFFIO

module top(

`ifdef ENABLE_SWITCH
	// Switch Inputs
	input SWITCH1,				// Voltage Level 2.5 V 
	input SWITCH2,				// Voltage Level 2.5 V
	input SWITCH3,				// Voltage Level 2.5 V
	input SWITCH4,				// Voltage Level 2.5 V
	input SWITCH5,				// Voltage Level 2.5 V
`endif

`ifdef ENABLE_LED	
	//LED Outputs
	output LED1,				// Voltage Level 2.5 V 
	output LED2,				// Voltage Level 2.5 V
	output LED3,				// Voltage Level 2.5 V
	output LED4,				// Voltage Level 2.5 V
	output LED5,				// Voltage Level 2.5 V
`endif
	
	//Clock from oscillator
	input Clock,

`ifdef ENABLE_ARDUINO
	//Analog input in Arduino connector
	input Arduino_A0,			// Voltage Level 2.5 V 
	input Arduino_A1,			// Voltage Level 2.5 V
	input Arduino_A2,			// Voltage Level 2.5 V
	input Arduino_A3,			// Voltage Level 2.5 V
	input Arduino_A4,			// Voltage Level 2.5 V
	input Arduino_A5,			// Voltage Level 2.5 V
	input Arduino_A6,			// Voltage Level 2.5 V
	input Arduino_A7,			// Voltage Level 2.5 V
	
	//Arduino I/Os
	inout Arduino_IO0, 			// Voltage Level 2.5 V 
	inout Arduino_IO1,			// Voltage Level 2.5 V
	inout Arduino_IO2,			// Voltage Level 2.5 V
	inout Arduino_IO3,			// Voltage Level 2.5 V
	inout Arduino_IO4,			// Voltage Level 2.5 V
	inout Arduino_IO5,			// Voltage Level 2.5 V
	inout Arduino_IO6,			// Voltage Level 2.5 V
	inout Arduino_IO7,			// Voltage Level 2.5 V
	inout Arduino_IO8,			// Voltage Level 2.5 V
	inout Arduino_IO9,			// Voltage Level 2.5 V 
	inout Arduino_IO10,			// Voltage Level 2.5 V
	inout Arduino_IO11,			// Voltage Level 2.5 V
	inout Arduino_IO12,			// Voltage Level 2.5 V
	inout Arduino_IO13,			// Voltage Level 2.5 V
`endif
	
	//Reset Pin
	input RESET_N,				// Voltage Level 2.5 V

`ifdef ENABLE_JTAG	
	//JTAG enable
	input JTAGEN,				// Voltage Level 2.5 V
`endif
	
	//There are 40 GPIOs. In this example pins are not used as LVDS pins. 
	//NOTE: Refer README.txt on how to use these GPIOs with LVDS option. 

`ifdef ENABLE_DIFFIO
	inout DIFFIO_L27N_PLL_CLKOUTN,		// Voltage Level 2.5 V 
	inout DIFFIO_L27P_PLL_CLKOUTP,		// Voltage Level 2.5 V
	inout DIFFIO_L20N_CLK1N, 		// Voltage Level 2.5 V 
	inout DIFFIO_L20P_CLK1P, 		// Voltage Level 2.5 V
	inout DIFFIO_R14P_CLK2P, 		// Voltage Level 2.5 V
	inout DIFFIO_R14N_CLK2N, 		// Voltage Level 2.5 V
	inout DIFFIO_R16P_CLK3P, 		// Voltage Level 2.5 V
	inout DIFFIO_R16N_CLK3N, 		// Voltage Level 2.5 V
	inout DIFFIO_R26N_DPCLK2,		// Voltage Level 2.5 V
	inout DIFFIO_R26P_DPCLK3,		// Voltage Level 2.5 V
	inout DIFFIO_B1N, 			// Voltage Level 2.5 V 
	inout DIFFIO_B1P, 			// Voltage Level 2.5 V
	inout DIFFIO_B3N, 			// Voltage Level 2.5 V
	inout DIFFIO_B3P, 			// Voltage Level 2.5 V
	inout DIFFIO_B5N, 			// Voltage Level 2.5 V
	inout DIFFIO_B5P, 			// Voltage Level 2.5 V
	inout DIFFIO_B7N, 			// Voltage Level 2.5 V
	inout DIFFIO_B7P, 			// Voltage Level 2.5 V
	inout DIFFIO_B9N, 			// Voltage Level 2.5 V
	inout DIFFIO_B9P, 			// Voltage Level 2.5 V
	inout DIFFIO_T1P, 			// Voltage Level 2.5 V
	inout DIFFIO_T1N, 			// Voltage Level 2.5 V
	inout DIFFIO_T4N, 			// Voltage Level 2.5 V
	inout DIFFIO_T6P, 			// Voltage Level 2.5 V
	inout DIFFIO_B12N,			// Voltage Level 2.5 V
	inout DIFFIO_B12P,			// Voltage Level 2.5 V
	inout DIFFIO_B14N,			// Voltage Level 2.5 V
	inout DIFFIO_B14P,			// Voltage Level 2.5 V
	inout DIFFIO_B16N,			// Voltage Level 2.5 V
	inout DIFFIO_B16P,			// Voltage Level 2.5 V
	inout DIFFIO_R18P,			// Voltage Level 2.5 V
	inout DIFFIO_R18N,			// Voltage Level 2.5 V
	inout DIFFIO_R27P,			// Voltage Level 2.5 V
	inout DIFFIO_R28P,			// Voltage Level 2.5 V
	inout DIFFIO_R27N,			// Voltage Level 2.5 V
	inout DIFFIO_R28N,			// Voltage Level 2.5 V
	inout DIFFIO_R33P,			// Voltage Level 2.5 V
	inout DIFFIO_R33N,			// Voltage Level 2.5 V
	inout DIFFIO_T10P,			// Voltage Level 2.5 V
	inout DIFFIO_T10N 			// Voltage Level 2.5 V 
`endif

);

endmodule
