`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2024 21:24:25
// Design Name: 
// Module Name: mod_n_cntr
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


module mod_n_cntr # (parameter N = 6,  
     parameter WIDTH = 3)
   (input i_clk,
    input i_rst,
    input i_en,
    input i_up_down,
    output reg[WIDTH-1:0] o_Q
    );
    
always @ (posedge i_clk) begin  
    if (i_rst) begin  
      o_Q <= 0;  
    end 
    else begin  
     if (i_en) begin
      if (i_up_down) begin
        if (o_Q == N-1)
          o_Q<= 0;
        o_Q <= o_Q + 1; 
       end 
      else begin  
        if (o_Q == 0)
          o_Q<= N-1;
        o_Q <= o_Q - 1; 
        end
    end  
    end
end      

endmodule
