function out1 = dk_fun1(in1,in2,in3)
%DK_FUN1
%    OUT1 = DK_FUN1(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    20-Apr-2018 11:13:18

I1 = in2(1,:);
I2 = in2(2,:);
I3 = in2(3,:);
x_data1 = in3(1,:);
x_data2 = in3(2,:);
x_data3 = in3(3,:);
t2 = I1.*1.843663059903678e1;
t3 = t2-x_data1;
t4 = I1.*1.790583413679965;
t16 = x_data1.*9.712096817590489e-2;
t5 = t4-t16;
t6 = I3.*6.631322840965819e1;
t18 = x_data3.*7.298838610030944e-1;
t7 = t6-t18;
t8 = I3.*9.085449336901703e1;
t9 = t8-x_data3;
t10 = I2.*2.920526703876809e1;
t11 = t10-x_data2;
t12 = I2.*4.993439499134532;
t20 = x_data2.*1.709773614638095e-1;
t13 = t12-t20;
t17 = t3.*t5.*(1.0./2.0);
t19 = t7.*t9.*(1.0./2.0);
t21 = t11.*t13.*(1.0./2.0);
t14 = -t17-t19-t21;
t15 = exp(t14);
out1 = [t15.*(I1.*3.687326119807356e1-x_data1.*2.0).*(-7.476981232440189e-5);t15.*(I2.*5.841053407753618e1-x_data2.*2.0).*(-2.085122264347499e-4);t15.*(I3.*1.817089867380341e2-x_data3.*2.0).*(-2.76905705980226e-3)];
