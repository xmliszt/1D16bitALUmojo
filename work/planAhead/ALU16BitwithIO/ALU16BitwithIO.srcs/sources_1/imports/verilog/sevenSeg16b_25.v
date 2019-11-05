/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sevenSeg_25 (
    input [7:0] char,
    output reg [6:0] seg
  );
  
  
  
  always @* begin
    
    case (char)
      1'h0: begin
        seg = 7'h3f;
      end
      1'h1: begin
        seg = 7'h06;
      end
      2'h2: begin
        seg = 7'h5b;
      end
      2'h3: begin
        seg = 7'h4f;
      end
      3'h4: begin
        seg = 7'h66;
      end
      3'h5: begin
        seg = 7'h6d;
      end
      3'h6: begin
        seg = 7'h7d;
      end
      3'h7: begin
        seg = 7'h07;
      end
      4'h8: begin
        seg = 7'h7f;
      end
      4'h9: begin
        seg = 7'h6f;
      end
      16'h0077: begin
        seg = 7'h77;
      end
      16'h007c: begin
        seg = 7'h7c;
      end
      16'h0039: begin
        seg = 7'h39;
      end
      16'h005e: begin
        seg = 7'h5e;
      end
      16'h0079: begin
        seg = 7'h79;
      end
      16'h0074: begin
        seg = 7'h74;
      end
      16'h0038: begin
        seg = 7'h38;
      end
      16'h0015: begin
        seg = 7'h15;
      end
      16'h0037: begin
        seg = 7'h37;
      end
      16'h005c: begin
        seg = 7'h5c;
      end
      16'h0073: begin
        seg = 7'h73;
      end
      16'h0067: begin
        seg = 7'h67;
      end
      16'h0050: begin
        seg = 7'h50;
      end
      16'h006d: begin
        seg = 7'h6d;
      end
      16'h0078: begin
        seg = 7'h78;
      end
      16'h003e: begin
        seg = 7'h3e;
      end
      16'h0076: begin
        seg = 7'h76;
      end
      default: begin
        seg = 7'h00;
      end
    endcase
  end
endmodule