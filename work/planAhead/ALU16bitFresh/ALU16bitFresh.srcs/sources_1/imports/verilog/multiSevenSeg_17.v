/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     DIGITS = 4
     DIV = 16
*/
module multiSevenSeg_17 (
    input clk,
    input rst,
    input [27:0] values,
    output reg [6:0] seg,
    output reg [3:0] select
  );
  
  localparam DIGITS = 3'h4;
  localparam DIV = 5'h10;
  
  
  localparam BITS_STORE_DIGIT = 2'h2;
  
  wire [2-1:0] M_myCounter_value;
  counter_24 myCounter (
    .clk(clk),
    .rst(rst),
    .value(M_myCounter_value)
  );
  
  wire [7-1:0] M_mySevenSeg_seg;
  reg [7-1:0] M_mySevenSeg_char;
  sevenSeg_25 mySevenSeg (
    .char(M_mySevenSeg_char),
    .seg(M_mySevenSeg_seg)
  );
  
  wire [4-1:0] M_myDecoder_out;
  reg [2-1:0] M_myDecoder_in;
  decoder_26 myDecoder (
    .in(M_myDecoder_in),
    .out(M_myDecoder_out)
  );
  
  always @* begin
    M_mySevenSeg_char = values[(M_myCounter_value)*7+6-:7];
    seg = M_mySevenSeg_seg;
    M_myDecoder_in = M_myCounter_value;
    select = M_myDecoder_out;
  end
endmodule