//          (C) COPYRIGHT 2017 HWRACING FORMULA STUDENT TEAM
//              ALL RIGHTS RESERVED

`include "uvm_macros.svh"
`include "uvm_pkg.sv"
import uvm_pkg::*;


//vlog -work work -sv -stats=none "D:/BT/Documents/Formula Student/git/gearshift/ShifterTest/tb/top.sv" +incdir+D:/FPGA/Intel/uvm-1.2/src +define+UVM_CMDLINE_NO_DPI +define+UVM_REGEX_NO_DPI +define+UVM_NO_DPI
module shifter_tb_top;
  
  //Set the time unit
  timeunit 1ns;
  timeprecision 1ns;


  //Importing the UVM packages
  `include "tb_include.sv"
  


  //Generation of a basic clock for the system. Alternates every 10ns to give a 20ns Period and a 50MHz Clk
  bit clk;
  always #10 clk <=~clk;

  dut_if dut_if_1(clk); //Instansate the interface

  dut_wrapper dut_wrapper_1(dut_if_1);  //Instanstate the design wrapper


  //Always on the start up of the block run the test
  initial
    begin
      clk <= 1'b1;
      uvm_config_db#(virtual dut_if)::set(null, "uvm_test_top", "dut_if", dut_if_1);
      run_test("shifter_test");
    end

endmodule : shifter_tb_top




