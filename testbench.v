`timescale 1ns/1ps
module testbench;

reg [3:0] A, B;
reg [2:0] op;
wire [3:0] Y;

alu uut (A, B, op, Y);

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, testbench);

  A = 4'b0101; B = 4'b0011;

  op = 3'b000; #10;  // ADD
  op = 3'b001; #10;  // SUB
  op = 3'b010; #10;  // AND
  op = 3'b011; #10;  // OR
  op = 3'b100; #10;  // XOR
  op = 3'b101; #10;  // NOT A
  op = 3'b110; #10;  // SHIFT LEFT
  op = 3'b111; #10;  // SHIFT RIGHT

  $finish;
end

endmodule

