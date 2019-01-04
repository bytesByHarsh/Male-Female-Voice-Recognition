# Male-Female Voice Recognition
Recognize whether the voice is of a male ar female

## Introduction

The fundamental frequency of a typical male ranges somewhere from  85 Hz to 180 Hz. While, the fundamental frequency of a typical female ranges somewhere from 165 Hz to 255 Hz.

### Method 1 - Using in-built pitch function
                                                    [f0,inx] = pitch(audioIn,fs)
It straightway returns the fundamental frequency, f0 of any input audio file with sampling frequency fs. Thus, we can directly compare it with 165 Hz and report whether the voice is of a male or a female.

Limitation - Works only in Matlab 2018

Run **Male_Female_inbuilt_pitch.m** file to identify using this method.

### Method 2

![Work Flow](img/1.JPG)
