function out1 = k_fun2(in1,in2,in3)
%K_FUN2
%    OUT1 = K_FUN2(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    08-May-2018 17:02:11

I2 = in2(1,:);
I3 = in2(2,:);
x_data1 = in3(1,:);
x_data2 = in3(2,:);
out1 = exp((I2.*3.954747931148731-x_data1).*(I2.*3.96889542947086-x_data1.*1.003577345147765).*(-1.0./2.0)-(I3.*2.199679892124109-x_data2.*1.064475040573388).*(I3.*2.066445720455064-x_data2).*(1.0./2.0)).*4.829524597491159e-7+4.075529527699624e-9;
