function out1 = dk_dv_fun1(in1,in2,in3)
%DK_DV_FUN1
%    OUT1 = DK_DV_FUN1(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    08-May-2018 17:02:11

I2 = in2(1,:);
I3 = in2(2,:);
x_data1 = in3(1,:);
x_data2 = in3(2,:);
out1 = exp((I3.*1.286970097009704-x_data2.*8.594556907312019e-1).*(I3.*1.49742460360555-x_data2).*(-1.0./2.0)-(I2.*1.776040042837371e1-x_data1).*(I2.*1.325228930247021e1-x_data1.*7.461706370819535e-1).*(1.0./2.0)).*(I2.*3.552080085674741e1-x_data1.*2.0).*(-7.344522510786563e-6);
