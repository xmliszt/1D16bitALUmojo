/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_up_cond_out;
  reg [1-1:0] M_up_cond_in;
  button_conditioner_2 up_cond (
    .clk(clk),
    .in(M_up_cond_in),
    .out(M_up_cond_out)
  );
  wire [1-1:0] M_ctr_cond_out;
  reg [1-1:0] M_ctr_cond_in;
  button_conditioner_2 ctr_cond (
    .clk(clk),
    .in(M_ctr_cond_in),
    .out(M_ctr_cond_out)
  );
  wire [1-1:0] M_down_cond_out;
  reg [1-1:0] M_down_cond_in;
  button_conditioner_2 down_cond (
    .clk(clk),
    .in(M_down_cond_in),
    .out(M_down_cond_out)
  );
  wire [1-1:0] M_left_cond_out;
  reg [1-1:0] M_left_cond_in;
  button_conditioner_2 left_cond (
    .clk(clk),
    .in(M_left_cond_in),
    .out(M_left_cond_out)
  );
  wire [1-1:0] M_right_cond_out;
  reg [1-1:0] M_right_cond_in;
  button_conditioner_2 right_cond (
    .clk(clk),
    .in(M_right_cond_in),
    .out(M_right_cond_out)
  );
  wire [1-1:0] M_up_db_btn_out;
  reg [1-1:0] M_up_db_btn_in;
  btnDebouncer_7 up_db (
    .clk(clk),
    .btn_in(M_up_db_btn_in),
    .btn_out(M_up_db_btn_out)
  );
  wire [1-1:0] M_ctr_db_btn_out;
  reg [1-1:0] M_ctr_db_btn_in;
  btnDebouncer_7 ctr_db (
    .clk(clk),
    .btn_in(M_ctr_db_btn_in),
    .btn_out(M_ctr_db_btn_out)
  );
  wire [1-1:0] M_down_db_btn_out;
  reg [1-1:0] M_down_db_btn_in;
  btnDebouncer_7 down_db (
    .clk(clk),
    .btn_in(M_down_db_btn_in),
    .btn_out(M_down_db_btn_out)
  );
  wire [1-1:0] M_left_db_btn_out;
  reg [1-1:0] M_left_db_btn_in;
  btnDebouncer_7 left_db (
    .clk(clk),
    .btn_in(M_left_db_btn_in),
    .btn_out(M_left_db_btn_out)
  );
  wire [1-1:0] M_right_db_btn_out;
  reg [1-1:0] M_right_db_btn_in;
  btnDebouncer_7 right_db (
    .clk(clk),
    .btn_in(M_right_db_btn_in),
    .btn_out(M_right_db_btn_out)
  );
  wire [1-1:0] M_up_edge_out;
  reg [1-1:0] M_up_edge_in;
  edge_detector_12 up_edge (
    .clk(clk),
    .in(M_up_edge_in),
    .out(M_up_edge_out)
  );
  wire [1-1:0] M_ctr_edge_out;
  reg [1-1:0] M_ctr_edge_in;
  edge_detector_12 ctr_edge (
    .clk(clk),
    .in(M_ctr_edge_in),
    .out(M_ctr_edge_out)
  );
  wire [1-1:0] M_down_edge_out;
  reg [1-1:0] M_down_edge_in;
  edge_detector_12 down_edge (
    .clk(clk),
    .in(M_down_edge_in),
    .out(M_down_edge_out)
  );
  wire [1-1:0] M_left_edge_out;
  reg [1-1:0] M_left_edge_in;
  edge_detector_12 left_edge (
    .clk(clk),
    .in(M_left_edge_in),
    .out(M_left_edge_out)
  );
  wire [1-1:0] M_right_edge_out;
  reg [1-1:0] M_right_edge_in;
  edge_detector_12 right_edge (
    .clk(clk),
    .in(M_right_edge_in),
    .out(M_right_edge_out)
  );
  wire [7-1:0] M_mySeg_seg;
  wire [4-1:0] M_mySeg_select;
  reg [28-1:0] M_mySeg_values;
  multiSevenSeg_17 mySeg (
    .clk(clk),
    .rst(rst),
    .values(M_mySeg_values),
    .seg(M_mySeg_seg),
    .select(M_mySeg_select)
  );
  localparam MANUAL_modes = 5'd0;
  localparam ADD1_modes = 5'd1;
  localparam ADD2_modes = 5'd2;
  localparam ADDO_modes = 5'd3;
  localparam SUB1_modes = 5'd4;
  localparam SUBO_modes = 5'd5;
  localparam AND1_modes = 5'd6;
  localparam AND2_modes = 5'd7;
  localparam OR_modes = 5'd8;
  localparam XOR_modes = 5'd9;
  localparam LDR_modes = 5'd10;
  localparam SHL_modes = 5'd11;
  localparam SHR_modes = 5'd12;
  localparam SRA1_modes = 5'd13;
  localparam SRA2_modes = 5'd14;
  localparam CMPEQ_modes = 5'd15;
  localparam CMPLT_modes = 5'd16;
  localparam CMPLE_modes = 5'd17;
  
  reg [4:0] M_modes_d, M_modes_q = MANUAL_modes;
  reg [29:0] M_counter_d, M_counter_q = 1'h0;
  reg [15:0] M_store_a_d, M_store_a_q = 1'h0;
  reg [15:0] M_store_b_d, M_store_b_q = 1'h0;
  reg [5:0] M_store_alufn_d, M_store_alufn_q = 1'h0;
  
  integer up_btn;
  
  integer ctr_btn;
  
  integer down_btn;
  
  integer left_btn;
  
  integer right_btn;
  
  reg [15:0] a;
  
  reg [15:0] b;
  
  reg [5:0] alufn;
  
  localparam TIMER = 5'h1c;
  
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  wire [16-1:0] M_alu_out;
  reg [6-1:0] M_alu_alufn;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  alu_18 alu (
    .alufn(M_alu_alufn),
    .a(M_alu_a),
    .b(M_alu_b),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n),
    .out(M_alu_out)
  );
  
  always @* begin
    M_modes_d = M_modes_q;
    M_counter_d = M_counter_q;
    M_store_alufn_d = M_store_alufn_q;
    M_store_b_d = M_store_b_q;
    M_store_a_d = M_store_a_q;
    
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_led = 24'h000000;
    io_seg = 8'hff;
    io_sel = 4'hf;
    M_up_cond_in = io_button[0+0-:1];
    M_ctr_cond_in = io_button[1+0-:1];
    M_down_cond_in = io_button[2+0-:1];
    M_left_cond_in = io_button[3+0-:1];
    M_right_cond_in = io_button[4+0-:1];
    M_up_edge_in = M_up_cond_out;
    M_up_db_btn_in = M_up_edge_out;
    up_btn = M_up_db_btn_out;
    M_ctr_edge_in = M_ctr_cond_out;
    M_ctr_db_btn_in = M_ctr_edge_out;
    ctr_btn = M_ctr_db_btn_out;
    M_down_edge_in = M_down_cond_out;
    M_down_db_btn_in = M_down_edge_out;
    down_btn = M_down_db_btn_out;
    M_left_edge_in = M_left_cond_out;
    M_left_db_btn_in = M_left_edge_out;
    left_btn = M_left_db_btn_out;
    M_right_edge_in = M_right_cond_out;
    M_right_db_btn_in = M_right_edge_out;
    right_btn = M_right_db_btn_out;
    M_mySeg_values = 28'hf58b2f0;
    io_sel = 4'h0;
    a = 16'h0000;
    b = 16'h0000;
    alufn = io_dip[16+0+5-:6];
    io_led[0+7-:8] = a[0+7-:8];
    io_led[8+7-:8] = a[8+7-:8];
    M_alu_a = a;
    M_alu_b = b;
    M_alu_alufn = 6'h00;
    
    case (M_modes_q)
      MANUAL_modes: begin
        M_mySeg_values = 28'hf5b70ee;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = 1'h0;
        alufn = io_dip[16+0+5-:6];
        if (up_btn) begin
          M_store_alufn_d = alufn;
        end
        if (io_dip[16+7+0-:1] && ~io_dip[16+6+0-:1]) begin
          M_mySeg_values = 28'hf5ebd61;
          io_seg = ~M_mySeg_seg;
          io_sel = ~M_mySeg_select;
          a[8+7-:8] = io_dip[8+7-:8];
          a[0+7-:8] = io_dip[0+7-:8];
          if (left_btn) begin
            M_store_a_d = a;
          end
        end
        if (io_dip[16+6+0-:1] && ~io_dip[16+7+0-:1]) begin
          M_mySeg_values = 28'hf5ebd62;
          io_seg = ~M_mySeg_seg;
          io_sel = ~M_mySeg_select;
          b[8+7-:8] = io_dip[8+7-:8];
          b[0+7-:8] = io_dip[0+7-:8];
          if (left_btn) begin
            M_store_b_d = b;
          end
        end
        if (io_dip[16+6+0-:1] && io_dip[16+7+0-:1]) begin
          M_mySeg_values = 28'hf5cb2f3;
          io_seg = ~M_mySeg_seg;
          io_sel = ~M_mySeg_select;
          M_alu_alufn = M_store_alufn_q;
          M_alu_a = M_store_a_q;
          M_alu_b = M_store_b_q;
          io_led[0+7-:8] = M_alu_out[0+7-:8];
          io_led[8+7-:8] = M_alu_out[8+7-:8];
          io_led[16+7+0-:1] = M_alu_z;
          io_led[16+6+0-:1] = M_alu_v;
          io_led[16+5+0-:1] = M_alu_n;
        end
        if (ctr_btn == 1'h1) begin
          io_led = 24'h000000;
          M_modes_d = ADD1_modes;
        end
      end
      ADD1_modes: begin
        M_mySeg_values = 28'hc393201;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h00;
        M_alu_a = 16'h4000;
        M_alu_b = 16'h2000;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h6000) begin
          io_led[0+0+0-:1] = 1'h1;
        end else begin
          io_led[0+0+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = ADD2_modes;
        end
      end
      ADD2_modes: begin
        M_mySeg_values = 28'hc393202;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h00;
        M_alu_a = 16'h0002;
        M_alu_b = 16'h0004;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h0006) begin
          io_led[0+1+0-:1] = 1'h1;
        end else begin
          io_led[0+1+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = ADDO_modes;
        end
      end
      ADDO_modes: begin
        M_mySeg_values = 28'hc39326f;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h00;
        M_alu_a = 16'h4000;
        M_alu_b = 16'h4000;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_v == 1'h1) begin
          io_led[0+2+0-:1] = 1'h1;
        end else begin
          io_led[0+2+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = SUB1_modes;
        end
      end
      SUB1_modes: begin
        M_mySeg_values = 28'he7d7101;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h01;
        M_alu_a = 16'h4000;
        M_alu_b = 16'h2000;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h2000) begin
          io_led[0+3+0-:1] = 1'h1;
        end else begin
          io_led[0+3+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = SUBO_modes;
        end
      end
      SUBO_modes: begin
        M_mySeg_values = 28'he7d716f;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h01;
        M_alu_a = 16'hbfff;
        M_alu_b = 16'h4000;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_v == 1'h1) begin
          io_led[0+4+0-:1] = 1'h1;
        end else begin
          io_led[0+4+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = AND1_modes;
        end
      end
      AND1_modes: begin
        M_mySeg_values = 28'hc3bb201;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h18;
        M_alu_a = 16'h0001;
        M_alu_b = 16'h0001;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h0001) begin
          io_led[0+5+0-:1] = 1'h1;
        end else begin
          io_led[0+5+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = AND2_modes;
        end
      end
      AND2_modes: begin
        M_mySeg_values = 28'hc3bb202;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h18;
        M_alu_a = 16'h0001;
        M_alu_b = 16'h0002;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h0000) begin
          io_led[0+6+0-:1] = 1'h1;
        end else begin
          io_led[0+6+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = OR_modes;
        end
      end
      OR_modes: begin
        M_mySeg_values = 28'hf5eb7f2;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h1e;
        M_alu_a = 16'h000f;
        M_alu_b = 16'h00f0;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h00ff) begin
          io_led[0+7+0-:1] = 1'h1;
        end else begin
          io_led[0+7+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = XOR_modes;
        end
      end
      XOR_modes: begin
        M_mySeg_values = 28'hf5e37f2;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h16;
        M_alu_a = 16'h000a;
        M_alu_b = 16'h0008;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h0002) begin
          io_led[8+0+0-:1] = 1'h1;
        end else begin
          io_led[8+0+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = LDR_modes;
        end
      end
      LDR_modes: begin
        M_mySeg_values = 28'hf5b3272;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h1a;
        M_alu_a = 16'h0001;
        M_alu_b = 16'h8000;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h0001) begin
          io_led[8+1+0-:1] = 1'h1;
        end else begin
          io_led[8+1+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = SHL_modes;
        end
      end
      SHL_modes: begin
        M_mySeg_values = 28'hf5cf46c;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h20;
        M_alu_a = 16'h0001;
        M_alu_b = 16'h0003;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h0008) begin
          io_led[8+2+0-:1] = 1'h1;
        end else begin
          io_led[8+2+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = SHR_modes;
        end
      end
      SHR_modes: begin
        M_mySeg_values = 28'hf5cf472;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h21;
        M_alu_a = 16'h0008;
        M_alu_b = 16'h0003;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h0001) begin
          io_led[8+3+0-:1] = 1'h1;
        end else begin
          io_led[8+3+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = SRA1_modes;
        end
      end
      SRA1_modes: begin
        M_mySeg_values = 28'he7cb081;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h23;
        M_alu_a = 16'h1000;
        M_alu_b = 16'h0003;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h0200) begin
          io_led[8+4+0-:1] = 1'h1;
        end else begin
          io_led[8+4+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = SRA2_modes;
        end
      end
      SRA2_modes: begin
        M_mySeg_values = 28'he7cb082;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h23;
        M_alu_a = 16'h9000;
        M_alu_b = 16'h0003;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'hf200) begin
          io_led[8+5+0-:1] = 1'h1;
        end else begin
          io_led[8+5+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = CMPEQ_modes;
        end
      end
      CMPEQ_modes: begin
        M_mySeg_values = 28'hf58f2f1;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h33;
        M_alu_a = 16'h0001;
        M_alu_b = 16'h0001;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h0001) begin
          io_led[8+6+0-:1] = 1'h1;
        end else begin
          io_led[8+6+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = CMPLT_modes;
        end
      end
      CMPLT_modes: begin
        M_mySeg_values = 28'hf58f674;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h35;
        M_alu_a = 16'h0002;
        M_alu_b = 16'h0001;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h0000) begin
          io_led[8+7+0-:1] = 1'h1;
        end else begin
          io_led[8+7+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = CMPLE_modes;
        end
      end
      CMPLE_modes: begin
        M_mySeg_values = 28'hf58f665;
        io_seg = ~M_mySeg_seg;
        io_sel = ~M_mySeg_select;
        M_counter_d = M_counter_q + 1'h1;
        M_alu_alufn = 6'h37;
        M_alu_a = 16'h0002;
        M_alu_b = 16'h0001;
        io_led[16+7+0-:1] = M_alu_z;
        io_led[16+6+0-:1] = M_alu_v;
        io_led[16+5+0-:1] = M_alu_n;
        if (down_btn) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
        if (M_alu_out == 16'h0000) begin
          io_led[16+0+0-:1] = 1'h1;
        end else begin
          io_led[16+0+0-:1] = 1'h0;
        end
        if (M_counter_q[28+0-:1] == 1'h1) begin
          M_counter_d = 1'h0;
          M_modes_d = MANUAL_modes;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
      M_store_a_q <= 1'h0;
      M_store_b_q <= 1'h0;
      M_store_alufn_q <= 1'h0;
      M_modes_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
      M_store_a_q <= M_store_a_d;
      M_store_b_q <= M_store_b_d;
      M_store_alufn_q <= M_store_alufn_d;
      M_modes_q <= M_modes_d;
    end
  end
  
endmodule
