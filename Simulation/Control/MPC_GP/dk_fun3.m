function out1 = dk_fun3(in1,in2,in3)
%DK_FUN3
%    OUT1 = DK_FUN3(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    18-Apr-2018 09:44:59

ry1 = in1(4,:);
v1 = in2(1,:);
v2 = in2(2,:);
x_data1 = in3(1,:);
x_data2 = in3(2,:);
x_data3 = in3(3,:);
t2 = ry1.*2.545193306514084e1;
t16 = x_data3.*7.671979948456739e-1;
t3 = t2-t16;
t4 = ry1.*3.31751819427795e1;
t5 = t4-x_data3;
t6 = v2.*7.17269234575182;
t18 = x_data2.*6.319656041241728e-1;
t7 = t6-t18;
t8 = v2.*1.134981445025366e1;
t9 = t8-x_data2;
t10 = v1.*5.19896119655713;
t11 = t10-x_data1;
t12 = v1.*2.468479849543444;
t20 = x_data1.*4.748025146212146e-1;
t13 = t12-t20;
t17 = t3.*t5.*(1.0./2.0);
t19 = t7.*t9.*(1.0./2.0);
t21 = t11.*t13.*(1.0./2.0);
t14 = -t17-t19-t21;
t15 = exp(t14);
out1 = [t15.*(v1.*1.039792239311426e1-x_data1.*2.0).*(-1.6795962172368);t15.*(v2.*2.269962890050732e1-x_data2.*2.0).*(-4.880423445043025);t15.*(ry1.*6.6350363885559e1-x_data3.*2.0).*(-1.731793374998843e1)];