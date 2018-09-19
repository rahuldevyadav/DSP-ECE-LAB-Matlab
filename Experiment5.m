%% *Experiment No.- 5* _To develop program for linear convolution two causal Sequence_ 

clc;clear all;close all;

n=-10:1:10;
%unitstep
S1=n>=0;
%ramp;
S2=S1.*n;

% linear convolution 
Lconv = conv(S1,S2);

subplot(3,1,1);stem(S1);title('x[n] - First CausalSequence');
subplot(3,1,2);stem(S2);title('h[n] - secondCausalSequence');
subplot(3,1,3);stem(Lconv);title('Linear convolution of causal seq.');

