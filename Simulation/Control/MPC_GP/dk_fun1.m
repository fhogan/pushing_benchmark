function out1 = dk_fun1(in1,in2,in3)
%DK_FUN1
%    OUT1 = DK_FUN1(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    06-Jun-2018 07:48:27

I2 = in2(1,:);
I3 = in2(2,:);
x_data1 = in3(1,:);
x_data2 = in3(2,:);
t2 = I3.*1.286970097009704;
t3 = t2-x_data2.*8.594556907312019e-1;
t4 = I3.*1.49742460360555;
t5 = t4-x_data2;
t6 = I2.*1.776040042837371e1;
t7 = t6-x_data1;
t8 = I2.*1.325228930247021e1;
t9 = t8-x_data1.*7.461706370819535e-1;
t10 = t3.*t5.*(-1.0./2.0)-t7.*t9.*(1.0./2.0);
t11 = exp(t10);
out1 = [t11.*(I2.*3.552080085674741e1-x_data1.*2.0).*(-7.344522510786563e-6);t11.*(I3.*2.994849207211101-x_data2.*2.0).*(-7.132489060916492e-7)];
