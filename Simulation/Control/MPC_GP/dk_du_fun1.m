function out1 = dk_du_fun1(in1,in2,in3)
%DK_DU_FUN1
%    OUT1 = DK_DU_FUN1(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    11-Apr-2018 15:57:32

ry1 = in1(4,:);
u1 = in2(1,:);
u2 = in2(2,:);
x_data1 = in3(1,:);
x_data2 = in3(2,:);
x_data3 = in3(3,:);
t2 = conj(u2);
t3 = t2.*3.220462369253751e1;
t4 = conj(x_data2);
t5 = t3-t4;
t6 = u2.*1.432390008203596e1;
t7 = t6-x_data2.*4.447777505114929e-1;
t8 = conj(u1);
t9 = t8.*1.035950944065296e1;
t10 = conj(x_data1);
t11 = t9-t10;
t12 = u1.*1.56437043117676e1;
t13 = t12-x_data1.*1.510081573011394;
t14 = conj(ry1);
t15 = t14.*5.025257293700998e1;
t16 = conj(x_data3);
t17 = t15-t16;
t18 = ry1.*3.505865122236155e1;
t19 = t18-x_data3.*6.976488799151929e-1;
t20 = t5.*t7.*(-1.0./2.0)-t11.*t13.*(1.0./2.0)-t17.*t19.*(1.0./2.0);
t21 = exp(t20);
out1 = [t21.*(u1.*1.035950944065296e1-x_data1).*(-2.115603653678615e-4);t21.*(u2.*3.220462369253751e1-x_data2).*(-6.231275520967967e-5)];
