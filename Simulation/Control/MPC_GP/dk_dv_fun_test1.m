function out1 = dk_dv_fun_test1(in1,in2,in3)
%DK_DV_FUN_TEST1
%    OUT1 = DK_DV_FUN_TEST1(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    31-May-2018 11:28:07

ry1 = in1(4,:);
v1 = in2(1,:);
v2 = in2(2,:);
x_data1 = in3(1,:);
x_data2 = in3(2,:);
x_data3 = in3(3,:);
t2 = v2.*3.220462369253751e1;
t3 = t2-x_data2;
t4 = v2.*1.432390008203596e1;
t5 = t4-x_data2.*4.447777505114929e-1;
t6 = v1.*1.035950944065296e1;
t7 = t6-x_data1;
t8 = v1.*1.56437043117676e1;
t9 = t8-x_data1.*1.510081573011394;
t10 = ry1.*5.025257293700998e1;
t11 = t10-x_data3;
t12 = ry1.*3.505865122236155e1;
t13 = t12-x_data3.*6.976488799151929e-1;
t14 = t3.*t5.*(-1.0./2.0)-t7.*t9.*(1.0./2.0)-t11.*t13.*(1.0./2.0);
t15 = exp(t14);
out1 = [t15.*(v1.*1.620611025045398e2-x_data1.*1.56437043117676e1).*(-1.400986338413291e-4),t15.*(v2.*4.612958119514752e2-x_data2.*1.432390008203596e1).*(-1.400986338413291e-4)];
