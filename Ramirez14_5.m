% RC Circuit Application 
% Define some constants 
RC = 0.2 ;
vi = 2;
va = 10;
% use ode 45 to solve the differential equation 
% Solve for voltage after 0.25 s 
[~,v] = ode45(@(t,V) (va-V)/RC, [0 0.25],vi);
n = length (v);
fprintf("The voltage after 0.25s is %.2f V\n.",v(n))
% Solve for voltage after 0.5 s 
[~,v] = ode45(@(t,V) (va-V)/RC, [0 0.5],vi);
n = length (v);
fprintf("The voltage after 0.5s is %.2f V\n.",v(n))
% Solve for voltage after 0.1 s 
[~,v] = ode45(@(t,V) (va-V)/RC, [0 0.1],vi);
n = length (v);
fprintf("The voltage after 0.1s is %.2f V\n.",v(n))
% Solve for voltage after 1 s 
[t,v] = ode45(@(t,V) (va-V)/RC, [0 1],vi);
n = length (v);
fprintf("The voltage after 1s is %.2f V\n.",v(n))
% Logical comparison 
near8v = v>7.9 & v<8.1;
time8v = t(near8v);
fprintf("It will take %.2f seconds for the voltage to reach 8V.\n",time8v)
plot(t,v)
ylim([0 10])
grid on 
title ("The capacitor voltage in a RC Circuit")
xlabel("Time(s)")
ylabel("The voltage(V)")