//==============================================================================
//Created By: Brian Choi
//File name:"alu.v"
//
//Descrition: This is the implementation of an Arithmetic Logic Unit intially
//created for ECE 324 and expanded to be a 64-bit ALU
//==============================================================================


module alu #(parameter N=63)(
    input [N:0] value_a,  //I: default 64-bit input "a".
    input [N:0] value_b,  //I: default 64-bit input "b".
    input [3:0] opcode,   //I: opcode to choose what operation to perform.
    output reg [N+1:0] y  //O: Output "y" with an extra bit to determine carry. 
    );

//--------------------------Main Body--------------------------------------------
    always@* begin //Always Checking
        case (opcode)
            4'b0000:  y = value_a + value_b;         //Addition.
            4'b0001:  y = value_a - value_b;         //Subtraction.
            4'b0010:  y = value_a * value_b;         //Multiplication.
            4'b0011:  y = value_a / value_b;         //Division.
            4'b0100:  y = value_a % value_b;         //Modulus.
            //4'b0101:  y = value_a ** value_b;        //Exponential.  **Disabled**
            4'b0110:  y = value_a >> value_b;        //Logical R-Shift
            4'b0111:  y = value_a << value_b;        //Logical L-Shift
            4'b1000:  y = value_a >>> value_b;       //Arithmetic R-Shift
            4'b1001:  y = value_a <<< value_b;       //Arithmetic L-Shift
            default:  y = 0;    //Default 
        endcase
    end
//------------------------------------------------------------------------------  
endmodule
 
