%% *Experiment No.- 7* _To design IIR lowpass filter._ 

clc;clear all;close all;

%For data sampled at 20000 Hz, design a lowpass filter with no more than 3 dB of ripple 
%in a passband from 0 to 4200 Hz, and at least 60 dB of attenuation in the stopband. 
%Find the filter order and cutoff frequency


fs = 20000;
Wp = 4200/(fs/2);
Ws = 5000/(fs/2);
Rp = 3;
Rs = 60;
[n,Wn] = buttord(Wp,Ws,Rp,Rs);
disp('Order of filter is - ');
disp(n)
disp('Cuttoff frequency (normalized) of filter is - ');
disp(Wn)

%returns the lowest order, n, of the digital Butterworth filter with no more 
%than Rp dB of passband ripple and at least Rs dB of attenuation in the stopband.
%Wp and Ws are respectively the passband and stopband edge frequencies of the filter.
[b,a] = butter(n,Wn,'Low');
%b,a — Transfer function coefficients
fvtool(b,a)
title(sprintf('n = %d IIR Butterworth Highpass Filter',n))

%[z,p,k] = butter(n,Wn);
%sos = zp2sos(z,p,k);

%freqz(sos,5120,10000)
%title(sprintf('n = %d Butterworth Lowpass Filter',n))

