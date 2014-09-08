// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\controllerHdl\controllerHdl_Wrap_2pi.v
// Created: 2014-09-08 14:12:04
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: controllerHdl_Wrap_2pi
// Source Path: controllerHdl/Encoder_To_Position_And_Velocity/Encoder_To_Rotor_Position/Wrap_2pi
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module controllerHdl_Wrap_2pi
          (
           x,
           wrap
          );


  input   signed [18:0] x;  // sfix19_En14
  output  signed [17:0] wrap;  // sfix18_En14


  wire signed [18:0] Two_Pi1_out1;  // sfix19_En14
  wire signed [18:0] Two_Pi3_out1;  // sfix19_En14
  wire Relational_Operator1_relop1;
  wire signed [19:0] x_dtc;  // sfix20_En14
  wire signed [18:0] Two_Pi2_out1;  // sfix19_En14
  wire signed [18:0] Two_Pi_out1;  // sfix19_En14
  wire Relational_Operator_relop1;
  wire signed [19:0] Add2_add_cast;  // sfix20_En14
  wire signed [19:0] Add2_add_cast_1;  // sfix20_En14
  wire signed [19:0] Add2_out1;  // sfix20_En14
  wire signed [19:0] Switch1_out1;  // sfix20_En14
  wire signed [17:0] Switch1_out1_dtc;  // sfix18_En14
  wire signed [19:0] Add1_sub_cast;  // sfix20_En14
  wire signed [19:0] Add1_sub_cast_1;  // sfix20_En14
  wire signed [19:0] Add1_out1;  // sfix20_En14
  wire signed [17:0] Add1_out1_dtc;  // sfix18_En14
  wire signed [17:0] Switch_out1;  // sfix18_En14


  // <S10>/Two Pi1
  assign Two_Pi1_out1 = 19'sb0011001001000100000;



  // <S10>/Two Pi3
  assign Two_Pi3_out1 = 19'sb0000000000000000000;



  // <S10>/Relational Operator1
  assign Relational_Operator1_relop1 = (x < Two_Pi3_out1 ? 1'b1 :
              1'b0);



  assign x_dtc = x;



  // <S10>/Two Pi2
  assign Two_Pi2_out1 = 19'sb0011001001000100000;



  // <S10>/Two Pi
  assign Two_Pi_out1 = 19'sb0011001001000100000;



  // <S10>/Relational Operator
  assign Relational_Operator_relop1 = (x >= Two_Pi1_out1 ? 1'b1 :
              1'b0);



  // <S10>/Add2
  assign Add2_add_cast = x;
  assign Add2_add_cast_1 = Two_Pi2_out1;
  assign Add2_out1 = Add2_add_cast + Add2_add_cast_1;



  // <S10>/Switch1
  assign Switch1_out1 = (Relational_Operator1_relop1 == 1'b0 ? x_dtc :
              Add2_out1);



  assign Switch1_out1_dtc = Switch1_out1[17:0];



  // <S10>/Add1
  assign Add1_sub_cast = x;
  assign Add1_sub_cast_1 = Two_Pi_out1;
  assign Add1_out1 = Add1_sub_cast - Add1_sub_cast_1;



  assign Add1_out1_dtc = Add1_out1[17:0];



  // <S10>/Switch
  assign Switch_out1 = (Relational_Operator_relop1 == 1'b0 ? Switch1_out1_dtc :
              Add1_out1_dtc);



  assign wrap = Switch_out1;

endmodule  // controllerHdl_Wrap_2pi

