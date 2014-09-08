// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\controllerHdl\controllerHdl_Mark_Extract_Bits1.v
// Created: 2014-09-08 14:12:04
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: controllerHdl_Mark_Extract_Bits1
// Source Path: controllerHdl/Field_Oriented_Control/Open_Loop_Control/Sin_Cos/Mark_Extract_Bits1
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module controllerHdl_Mark_Extract_Bits1
          (
           In1,
           Out1
          );


  input   [17:0] In1;  // ufix18
  output  [8:0] Out1;  // ufix9


  wire [8:0] MATLAB_Function_out1;  // ufix9


  // <S36>/MATLAB Function
  controllerHdl_MATLAB_Function_block1   u_MATLAB_Function   (.u(In1),  // ufix18
                                                              .y(MATLAB_Function_out1)  // ufix9
                                                              );

  assign Out1 = MATLAB_Function_out1;

endmodule  // controllerHdl_Mark_Extract_Bits1

