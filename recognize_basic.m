clc;
clear all;
close all;

%Read the Audio File
[y ,fs]=audioread('wav/male600.wav');
plot(y)
sound(y,fs)
%Set Initial Variables
%fs=8000;                      % Sampling rate
%Performing autocorrelation
ms2 = fs/500;
ms20 = fs/50;
r = xcorr(y, ms20, 'coeff');
d = (-ms20:ms20)/fs;
plot(d, r);
title('Autocorrelation');
xlabel('Delay (s)');
ylabel('Correlation coeff.');
r = r(ms20 + 1 : 2*ms20+1);
[rmax, tx] = max(r(ms2:ms20));
 Fx = fs/(ms2+tx-1);
 %%--recognizing voice--

Fth= 160; %% threshold frequency is 160 Hz
if Fx> Fth
    disp('Female voice!')
else
    disp('Male voice!')
end