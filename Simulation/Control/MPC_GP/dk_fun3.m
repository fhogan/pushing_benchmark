function out1 = dk_fun3(in1,in2,in3)
%DK_FUN3
%    OUT1 = DK_FUN3(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    24-Apr-2018 10:00:28

I2 = in2(1,:);
I3 = in2(2,:);
x_data1 = in3(1,:);
x_data2 = in3(2,:);
t2 = I3.*1.119289175116178;
t3 = t2-x_data2.*5.655708441921091e-1;
t4 = I3.*1.979043273906789;
t5 = t4-x_data2;
t6 = I2.*9.489105834427072;
t7 = t6-x_data1.*8.570348613428813e-1;
t8 = I2.*1.107201849357524e1;
t9 = t8-x_data1;
t10 = t3.*t5.*(-1.0./2.0)-t7.*t9.*(1.0./2.0);
t11 = exp(t10);
out1 = [t11.*(I2.*2.214403698715048e1-x_data1.*2.0).*(-2.077989874352126e-3);t11.*(I3.*3.958086547813577-x_data2.*2.0).*(-2.451096671221595e-4)];