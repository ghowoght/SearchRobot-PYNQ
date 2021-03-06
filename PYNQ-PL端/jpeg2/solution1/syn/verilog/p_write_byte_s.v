// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module p_write_byte_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        JpegEncoder_outhebyte_last_V_read,
        value_r,
        jpeg_out_TDATA,
        jpeg_out_TVALID,
        jpeg_out_TREADY,
        jpeg_out_TKEEP,
        jpeg_out_TSTRB,
        jpeg_out_TLAST,
        ap_return,
        jpeg_out_TDATA_blk_n,
        ap_ce
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] JpegEncoder_outhebyte_last_V_read;
input  [7:0] value_r;
output  [7:0] jpeg_out_TDATA;
output   jpeg_out_TVALID;
input   jpeg_out_TREADY;
output  [0:0] jpeg_out_TKEEP;
output  [0:0] jpeg_out_TSTRB;
output  [0:0] jpeg_out_TLAST;
output  [7:0] ap_return;
output   jpeg_out_TDATA_blk_n;
input   ap_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg jpeg_out_TVALID;
reg jpeg_out_TDATA_blk_n;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | (~((ap_start == 1'b0) | (jpeg_out_TREADY == 1'b0)) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (jpeg_out_TREADY == 1'b0)) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        jpeg_out_TDATA_blk_n = jpeg_out_TREADY;
    end else begin
        jpeg_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (jpeg_out_TREADY == 1'b0)) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
        jpeg_out_TVALID = 1'b1;
    end else begin
        jpeg_out_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_return = value_r;

assign jpeg_out_TDATA = value_r;

assign jpeg_out_TKEEP = 1'd1;

assign jpeg_out_TLAST = JpegEncoder_outhebyte_last_V_read;

assign jpeg_out_TSTRB = 1'd0;

endmodule //p_write_byte_s
