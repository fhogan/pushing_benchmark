function dR_dtheta = dR_fun(in1)
%DR_FUN
%    DR_DTHETA = DR_FUN(IN1)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    07-May-2018 11:50:02

xo3 = in1(3,:);
t2 = cos(xo3);
t3 = sin(xo3);
dR_dtheta = reshape([-t3,t2,0.0,-t2,-t3,0.0,0.0,0.0,0.0],[3,3]);
