`timescale 1ns / 1ps
//=====================================================================
// Created by: Brian Choi
// File_name: testbench
// Description:This is the testbench for the "alu.v"
//
//=====================================================================


module testbench;

//---------------------------Initializations & Assignments---------------------------
// Description: I wanted to create a simplified way to test the opcode so I created
// some local parameters with coommon abbreviations
//-----------------------------------------------------------------------------------
    localparam ADD = 4'b0000;           //Addition.
    localparam SUB = 4'b0001;           //Subtraction.
    localparam MUL = 4'b0010;           //Multiplication.
    localparam DIV = 4'b0011;           //Division.
    localparam MOD = 4'b0100;           //Modulus.
//  localparam EXP = 4'b0101;           //Exponential.                   **Disabled**
    localparam LSR = 4'b0110;           //Logical R-Shift.
    localparam LSL = 4'b0111;           //Logical L-Shift.
    localparam ASR = 4'b1000;           //Arithmetic R-Shift.
    localparam ASL = 4'b1001;           //Arithmetic L-Shift.
    
    reg [63:0] value_a;     //O:Testing Value_a 
    reg [63:0] value_b;     //O:Testing Value_b
    reg  [3:0]  opcode;     //O:Testing Opcode
    wire [64:0] y;          //I:ALU Output
    
    alu UUT(
          .value_a(value_a),
          .value_b(value_b),
          .opcode(opcode),
          .y(y)
       );
//-------------------------------Test Bench----------------------------------------------
//Description: Below is where you can mess around with the Arithmetic Logic Unit itself.
// I have written very basic test code which can easily be altered to experiment with the
//code.
//---------------------------------------------------------------------------------------

    initial begin
             value_a = 1;
             value_b = 16;
             opcode  = ADD;           
      
    end
                                            
endmodule
