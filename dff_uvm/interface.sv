// Interface uvm module

interface dff_intf (input logic clk);
// interface has all dut signals
// since clk is generated and passed from the testbench top module, it is an input to the interface. Other input signals are internal logic inside the interface so they are defined below
logic rst;
logic d;
logic q;

endinterface
