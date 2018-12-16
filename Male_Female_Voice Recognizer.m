clc;clear all;close all;
[y ,Fs]=audioread('samples/m2.wav');
frame=3500; 
[b0,a0]=mybutter(350/(Fs/2));