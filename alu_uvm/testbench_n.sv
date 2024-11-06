//
//`include "design.sv"
`timescale 1ns / 1ps

module testbench ();

  // TB variables
  reg [7:0] a, b;               // ALU inputs
  reg [3:0] alu_op;             // Operation selector
  reg clock, reset;             // Clock and reset signals
  wire [7:0] alu_out;           // ALU output
  wire carry_out;               // Carry-out flag

  // DUT and port mapping
  alu dut (
    .a(a),
    .b(b),
    .alu_op(alu_op),
    .clock(clock),
    .reset(reset),
    .alu_out(alu_out),
    .carry_out(carry_out)
  );
  // Clock generation
  initial begin
    clock = 0;
    forever #5 clock = ~clock; // Clock period of 10 ns
  end
	
  // Dumping waveform data for VCD file
  initial begin
    $dumpfile("dump.vcd"); 
    // Name of the output VCD file
    $dumpvars(0, testbench); 
    // Dump all variables in the testbench scope
  end
  
  // Test different inputs and observe the output.
  initial begin
    // Reset the design first
    reset = 1;
    #10;
    reset = 0;

    // Test addition
    // 1. Addition
    alu_op = 4'b0000;
    a = 8'h09;
    b = 8'h01;
    #10;
    $display("Addition: %h + %h = %h (carry_out: %b)", a, b, alu_out, carry_out);

    // End simulation
    #10;
    //$stop;
    $finish;
  end


endmodule
