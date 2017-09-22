//          (C) COPYRIGHT 2017 HWRACING FORMULA STUDENT TEAM
//              ALL RIGHTS RESERVED
// Module which provides a wrapper for the DUT

module dut_wrapper(dut_if inter_DUT);
  //Instanstates the DUT
  bit LED1, LED2, LED3, LED4, LED5;

  ShifterTest shifter_1(inter_DUT.clk, inter_DUT.upBut, inter_DUT.downBut, inter_DUT.neutralBut, interDUT.upOut, interDUT.downOut, LED1, LED2, LED3, LED4, LED5);
endmodule : dut_wrapper