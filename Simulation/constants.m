d=0.45;                             %diameter quadrocopter
l=sqrt(d^2/8);                      %distance between one rotor and COM
m=1.0024;                           %mass of quadrocopter
g=9.81;                             %acceleration of free fall
kPWM=7.8502;                        %Proportional omega PWM
 
%moment of inertia xb
Jxx=0.01046412;
%moment of inertia yb
Jyy=0.010746965;
%moment of inertia zb
Jzz=0.020576095;
 
%proportional coefficient blade thrust
bT=7.90261e-06;
%proportional coefficient blade moment
bH=1.66057e-7;
 
%Attitude Controller design
k_phi=l*bT*kPWM*sqrt(m*g/bT)/Jxx;
k_theta=l*bT*kPWM*sqrt(m*g/bT)/Jyy;
k_psi=bH*kPWM*sqrt(m*g/bT)/Jzz;
