`define ADD 4'b0000
`define SUB 4'b0001
`define INC 4'b0010
`define DEC 4'b0011
`define MUL 4'b0100
`define DIV 4'b0101
`define SHL 4'b0110
`define SHR 4'b0110
`define AND 4'b0110
`define OR 4'b0110
`define NAND 4'b0110
`define NOR 4'b0110
`define XOR 4'b0110
`define XNOR 4'b0110
`define NOT 4'b0110
`define BUF 4'b0110
module alu(op1,op2,out,command);
  input [7:0]op1,op2;
  input [3:0]command;
 output reg [15:0]out;
  always @(op1,op2,command)
    begin
    case(command)
      `ADD:out=op1+op2;
      `SUB:out=op1-op2;
      `INC:out=op1+1;
      `DEC:out=op1-1;
      `MUL:out=op1*op2;
      `DIV:out=op1/op2;
      `SHL:out=op1<<1;
      `SHR:out=op1>>1;
      `AND:out=op1&op2;
      `OR:out=op1|op2;
      `NAND:out=~(op1&op2);
      `NOR:out=~(op1|op2);
      `XOR:out=op1^op2;
      `XNOR:out=~(op1^op2);
      `NOT:out=~op1;
      `BUF:out=op1;
    endcase
    end
endmodule
