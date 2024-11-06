// ============================
// Design: ALU
// Date: 06.11.2024
// Engineer: Mohamed Elmekawy
// ============================

// This is an alu module that do the operations: Add, Sub, Multi, Div
// More functions and more complex operation will be done later. Op bit width might increase.


module alu (
  input [7:0] a,            // First input
  input [7:0] b,            // Second input
  input [3:0] alu_op,       // ALU operation selection
  input clock,              // Clock signal
  input reset,              // Reset signal
  output reg [7:0] alu_out, // ALU sum result
  output bit carry_out      // ALU carry out (flags too)
);
  
  // intermediate signals and wires
  // Results from addition for example might be more than 8 bit. We need to divide that over sum and carry out.
  
  reg [8:0] alu_result;
  // Sequential part: Always block to describe the function of the register.
  always @(posedge clock or posedge reset)
  begin
    if(reset) begin
      alu_out <= 8'h00;
      carry_out <= 1'b0;
    end
    else begin
      alu_out <= alu_result [7:0];
      carry_out <= alu_result[8];
    end
  end
  
  // Combination logic operations
  
  always @(*)
    begin
      case (alu_op)
        4'b0000:
          alu_result = a + b;
        4'b0001:
          alu_result = a - b;
        4'b0010:
          alu_result = a * b;
        4'b0011:
          alu_result = a / b;
        // Avoid latches by using default
        default:
          alu_result = 9'h000; // Any value here is accepted I guess. 
      endcase
    end
  
  
endmodule
