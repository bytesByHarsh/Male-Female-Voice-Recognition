clc;
clear all;
close all;

%Read the Audio File
[y ,fs]=audioread('wav/female600.wav');
N = length(y);
count = 0;
for i = 1:N-1
    if y(i)<0 && y(i+1)>0
        count = count +1;
        zeropos(count)=i;
    end
end
x1 = 2*N/count
y=fs/x1
        