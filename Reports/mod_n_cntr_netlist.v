/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Aug 13 15:15:54 2024
/////////////////////////////////////////////////////////////


module mod_n_cntr ( i_clk, i_rst, i_en, i_up_down, o_Q );
  output [2:0] o_Q;
  input i_clk, i_rst, i_en, i_up_down;
  wire   n23, n24, n25, n9, n10, n11, n72, n73, n74, n75, n76, n77, n78, n79;

  sky130_fd_sc_hd__dfxtp_1 \o_Q_reg[0]  ( .D(n11), .CLK(i_clk), .Q(n25) );
  sky130_fd_sc_hd__dfxtp_1 \o_Q_reg[2]  ( .D(n9), .CLK(i_clk), .Q(n23) );
  sky130_fd_sc_hd__dfxtp_1 \o_Q_reg[1]  ( .D(n10), .CLK(i_clk), .Q(n24) );
  sky130_fd_sc_hd__o21ai_1 U47 ( .A1(i_up_down), .A2(n76), .B1(i_en), .Y(n75)
         );
  sky130_fd_sc_hd__inv_8 U48 ( .A(n76), .Y(o_Q[0]) );
  sky130_fd_sc_hd__inv_8 U49 ( .A(n77), .Y(o_Q[1]) );
  sky130_fd_sc_hd__a211oi_1 U50 ( .A1(n24), .A2(n73), .B1(i_rst), .C1(n72), 
        .Y(n10) );
  sky130_fd_sc_hd__nor2_1 U51 ( .A(n24), .B(n73), .Y(n72) );
  sky130_fd_sc_hd__a21oi_1 U52 ( .A1(i_up_down), .A2(n76), .B1(n75), .Y(n73)
         );
  sky130_fd_sc_hd__a221oi_1 U53 ( .A1(i_up_down), .A2(n77), .B1(n76), .B2(n24), 
        .C1(n75), .Y(n79) );
  sky130_fd_sc_hd__clkinv_1 U54 ( .A(i_en), .Y(n74) );
  sky130_fd_sc_hd__clkinv_1 U55 ( .A(n24), .Y(n77) );
  sky130_fd_sc_hd__clkinv_1 U56 ( .A(n25), .Y(n76) );
  sky130_fd_sc_hd__buf_8 U57 ( .A(n23), .X(o_Q[2]) );
  sky130_fd_sc_hd__a221oi_1 U58 ( .A1(n25), .A2(i_en), .B1(n76), .B2(n74), 
        .C1(i_rst), .Y(n11) );
  sky130_fd_sc_hd__nor2_1 U59 ( .A(n23), .B(n79), .Y(n78) );
  sky130_fd_sc_hd__a211oi_1 U60 ( .A1(n23), .A2(n79), .B1(i_rst), .C1(n78), 
        .Y(n9) );
endmodule

