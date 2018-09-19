%% *Experiment No.- 6* _To develop program for Circular linear convolution_ 

clc;clear all;close all;

n=-10:1:10;

S1=[1 2 6];
%S2 = input('Input second sequence h[n]');
S2=[3 5 6 9 8];

%circular convolution
%lyn=input('length of output sequenc, N of MODULO-N')
lyn=5;
cconv_d= cconv(S1,S2,lyn);


subplot(3,1,1);stem(S1);title('x[n] - First Sequence');
subplot(3,1,2);stem(S2);title('h[n] - second Sequence');
subplot(3,1,3);stem(cconv_d);title('Circular convolution');



