%% *Experiment No.- 4* _To develop program for linear convolution Two Sequence_ 

clc;clear all;close all;

%discrete convolution
%S1 = input('Input first sequence x[n]');
S1=[1 2 6];
%S2 = input('Input second sequence h[n]');
S2=[3 5 6 9 8];

% linear convolution 
Lconv = conv(S1,S2);


subplot(3,1,1);stem(S1);title('x[n] - First Sequence');
subplot(3,1,2);stem(S2);title('h[n] - second Sequence');
subplot(3,1,3);stem(Lconv);title('Linear convolution');


