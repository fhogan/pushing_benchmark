function out1 = dk_dx_fun_test1(in1,in2,in3)
%DK_DX_FUN_TEST1
%    OUT1 = DK_DX_FUN_TEST1(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    20-Apr-2018 11:06:10

ry1 = in1(4,:);
v1 = in2(1,:);
v2 = in2(2,:);
x_data1 = in3(1,:);
x_data2 = in3(2,:);
x_data3 = in3(3,:);
out1 = [0.0,0.0,0.0,exp((v2.*2.920526703876809e1-x_data2).*(v2.*4.993439499134532-x_data2.*1.709773614638095e-1).*(-1.0./2.0)-(v1.*1.790583413679965-x_data1.*9.712096817590489e-2).*(v1.*1.843663059903678e1-x_data1).*(1.0./2.0)-(ry1.*6.631322840965819e1-x_data3.*7.298838610030944e-1).*(ry1.*9.085449336901703e1-x_data3).*(1.0./2.0)).*(ry1.*6.024854770823402e3-x_data3.*6.631322840965819e1).*(-8.35144699243435e-5)];
