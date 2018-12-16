clc;
clear all;
close all;

%Read the Audio File
[y ,fs]=audioread('wav/female600.wav');
% ms20 = fs/50;
% z= autocorr(y,ms20,'coeff');
% plot(z)
% z= fft(y);
% m = mean(z)
% plot(z)
%sound(y,fs)
Nfft = 64;
[Pxx,f] = pwelch(y,gausswin(Nfft),Nfft/2,Nfft,fs);
plot(f,Pxx);
ylabel('PSD'); xlabel('Frequency (Hz)');
grid on;
% Get frequency estimate (spectral peak)
[~,loc] = max(Pxx);
FREQ_ESTIMATE = f(loc)
title(['Frequency estimate = ',num2str(FREQ_ESTIMATE),' Hz']);