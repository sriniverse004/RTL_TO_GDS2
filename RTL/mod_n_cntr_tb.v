`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2024 21:43:36
// Design Name: 
// Module Name: mod_n_cntr_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mod_n_cntr_tb#(parameter WIDTH=3 ) ();

reg i_clk,i_rst,i_en,i_up_down;
wire [WIDTH-1:0]o_Q;

mod_n_cntr dut (.i_clk(i_clk),.i_rst(i_rst),.i_en(i_en),.i_up_down(i_up_down),.o_Q(o_Q));

initial
begin
        i_clk=1'b0;
        i_rst=1'b0;
        i_en=1'b1;
        i_up_down=1'b1;

        #10
          i_rst=1'b1;
          i_en=1'b0;

        #10
          i_rst=1'b0;
          i_en=1'b1;

        #50
          i_en=1'b0;
          
        
        #20
          i_up_down=1'b0;
          i_en=1'b1;

        #100
          $finish;

  end

  initial
    begin
         $dumpfile("output.vcd");
         $dumpvars(1);
  end

  always #5 i_clk = ~i_clk;





endmodule
