%% *Experiment No.- 3* _To represent basic signals (Unit step, unit impulse, ramp, exponential, sine and cosine)._ 

clc;clear all;close all;

%defining the sequence as strating:stepsize(sampling frequency):end
n=-10:1:10;
%Unit Step
unitstep = n>=0;
subplot(3,2,1)
stem(n,unitstep);
title('Unit Step Signal')
xlabel('n-->')
ylabel('Amplitude')
grid on;

%Unit Step
unitimpluse = n==0;
subplot(3,2,2)
stem(n,unitimpluse);
title('Unit Impluse Signal')
xlabel('n-->')
ylabel('Amplitude')
grid on;

%Ramp signal
subplot(3,2,3)
stem(n,unitstep.*n);
title('Ramp Signal')
xlabel('n-->')
ylabel('Amplitude')
grid on;

%Exponential signal
n=-1:0.01:1;
subplot(3,2,4)
plot(n,exp(n));
title('Exponential Signal')
xlabel('n-->')
ylabel('Amplitude')
grid on;

%Sine signal
n=-1:0.01:1;
%A=input('input amplitude - ')
%f= input('input frequency -')
%ph=input('input phase - ')
A=2;
f=10;
ph=0;
x1=A*sin(2*pi*f*n+ph);
subplot(3,2,5)
plot(n,x1);
title('Sine Signal')
xlabel('n-->')
ylabel('Amplitude')
grid on;

%Cos signal
n=-1:0.01:1;
%A=input('input amplitude - ')
%f= input('input frequency -')
%ph=input('input phase - ')
A=2;
f=10;
ph=0;
x2=A*cos(2*pi*f*n+ph);
subplot(3,2,6)
plot(n,x2);
title('Cos Signal')
xlabel('n-->')
ylabel('Amplitude')
grid on;
