function out1 = k_fun1(in1,in2,in3)
%K_FUN1
%    OUT1 = K_FUN1(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    17-May-2018 10:15:08

I2 = in2(1,:);
I3 = in2(2,:);
x_data1 = in3(1,:);
x_data2 = in3(2,:);
out1 = exp((I3.*1.207048610795723-x_data2.*1.025764993757835).*(I3.*1.176730165428795-x_data2).*(-1.0./2.0)-(I2.*3.578832269738957-x_data1).*(I2.*4.058074790616387-x_data1.*1.133910305025942).*(1.0./2.0)).*1.25732328359285e-6+8.950016553222123e-7;
