%dinamica cd
function dx = din_cd(t,x)
L = 0.002;
R = 10;
C = 10e-6;
U = 32;
T_pwm = 1/100e3; 
duty_cycle = 0.4;

d = @(t) (mod(t, T_pwm) < duty_cycle * T_pwm);


%x(1) = i
%x(2) = v

dx = zeros(2,1);
dx(1) = -(1/L)*x(2)+(U/L)*d(t);
dx(2) = (1/C)*x(1)-(1/(R*C))*x(2);