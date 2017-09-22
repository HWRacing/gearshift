//          (C) COPYRIGHT 2017 HWRACING FORMULA STUDENT TEAM
//              ALL RIGHTS RESERVED

//This class is a basic UVM test for the shifter

class shifter_test extends uvm_test;
  `uvm_component_utils(shifter_test);

  tb_env tb_environment; 
  tb_seq tb_sequencer;

  //Constructor for the class
  function new (string name, uvm_component parent = null);
    super.new(name, parent);

    tb_environment = tb_env::type_id::create("tb_env", this); //Create the test environment

  endfunction : new

  //Function : Build Phase
  // UVM Build Phase
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase); 
  endfunction : build_phase

  //Function : Debug End of Elaboration Phase 
  //Prints out the UVM component topology to make testing easier.
  virtual function void end_of_elaboration_phase(uvm_phase phase);
    uvm_top.print_topology();
  endfunction : end_of_elaboration_phase

  //Function : run_phase
  virtual task run_phase(uvm_phase phase);
    super.run_phase(phase);

    tb_seq 

  endtask : run_phase


endclass : shifter_test