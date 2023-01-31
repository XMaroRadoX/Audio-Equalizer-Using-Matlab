# 🎵 Audio Equalizer using MATLAB 💻
This project aims to develop an audio equalizer using MATLAB 🔧 that allows users to adjust the gain of different frequency bands in an audio file 🎶. The project is based on the audio equalizer function found in programs such as Winamp 🎧.

## Inputs 💾
The following inputs are required from the user:

* Wave file name 🔊
* Gain of each frequency band in dB 📊
* Type of filter used (FIR or IIR) 🔢
* Output sample rate 🔢

The user may use the following functions to input the required information: `input`, `menu`, and `uigetfile`. 💻

## Method 📈
1. Develop frequency band filters in the following bands:
* 0-170 Hz 🔢
* 170-310 Hz 🔢
* 310-600 Hz 🔢
* 600-1000 Hz 🔢
* 1-3 KHz 🔢
* 3-6 KHz 🔢
* 6-12 KHz 🔢
* 12-14 KHz 🔢
* 14-16 KHz 🔢
2. Analyze and export the following files:
* Gain 📊
* Phase 📊
* Impulse and step response 📊
* Order 🔢
* Poles/zeros 🔢

3. Filter the wave file using the filters developed in step 1. 🔢
4. Draw the output signals in the time and frequency domains 📈.
5. Amplify the output signals using the user-defined gain 📊.
6. Add the amplified output signals in the time domain to form the composite signal 🎶.

7. Draw and compare the composite signal with the original signal (in time and frequency) 📈.

8. Play and save the output wave signal using wavwrite and sound. 🎶

## Table of contents :label:

| File Name | Description                                                                                      |
|-----------|--------------------------------------------------------------------------------------------------|
| [main.m](https://github.com/XMaroRadoX/Audio_equalizer_using_matlab/blob/master/main.m)   | Contains source code for running the equalizer
| [filters.mat](https://github.com/XMaroRadoX/Audio_equalizer_using_matlab/blob/master/filters.mat)  | Contains the filter properties used in equalization.                                                                    |
| [composite.wav](https://github.com/XMaroRadoX/Audio_equalizer_using_matlab/blob/master/composite.wav)| Test file feel free to test with another|
| [report.pdf](https://github.com/XMaroRadoX/Audio_equalizer_using_matlab/blob/master/report.pdf)| contains sample runs and all info related to the project


## Note 💡
This project requires a basic understanding of audio equalization and filtering techniques, as well as proficiency in MATLAB programming 💻.

### Licensing :pencil:

This code is licensed under the MIT License.

### Authors :pen:

* Amr Yasser
* Begad Wael
* Marwan Radwan

### Contribution :clinking_glasses:

Feel free to contribute just make a pull request and do what you wish. 😼

[![License](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)
