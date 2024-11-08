// ******************************************************** 
// Testbench
// Reference: https://www.youtube.com/watch?v=ESIWLJfnxgI
// Date: 08.11.2024
// ******************************************************** 

`timescale 1ps/1ps

// Include lib of all uvm macros
`include "uvm_macros.svh"
// Then import all classes inside the uvm package
import uvm_pkg::*;

// SV files to include
`include "interface.sv"
`include "seq_itm.sv"
`include "sequence.sv"
`include "sequencer.sv"
`include "monitor.sv"
`include "driver.sv"
`include "scoreboard.sv"
`include "test.sv"
`include "environment.sv"

module top;
// Intermediate signals/wires
logic clk;

// Inside the testbench digram, you have DUT, Interface, and environment
// 1. DUT instantiation: Inputs are comming from the interface so use intf.signal_name
dff dut (
.clk(intf.clk),
.rst(intf.rst),
.d(intf.d),
.q(intf.q)
);
// sequence --> sequncer --> driver --> interface --> dut
// 2. Interface instantiation: Include it in the header of this file 
dff_intf intf (.clk(clk));

// After instantiating sub modules of testbench, do the main port of testbench
// 1- Generate the clock sigal
initial begin
    clk = 0;
    #5 ns;
    forever begin
        #5 ns;
        clk = ~clk;
    end
end

// Print simulation time and clock signal on the monitor
initial begin
    $monitor($time, ("clk = %d", clk))
end

endmodule
