clc

clc
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% To load filters in workspace %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% cd 'project location'        %
% load('filters.mat')          % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Analysis function
% analyze('IIR');

%START HERE
x = audioread('');
gain = [10 20 30 40 50 60 70 80 90];
y=[];
if type == 'IIR'
    y1=filter(iir170,x);
    y1 = y1 .* gain(0);
    y = [y y1];
    
    y2=filter(iir170310,x);
    y2 = y2 .* gain(1);
    y = [y y2];
    
    y3=filter(iir310600,x);
    y3 = y3 .* gain(2);
    y = [y y3];
    
    y4=filter(iir6001000,x);
    y4 = y4 .* gain(3);
    y = [y y4];
    
    y5=filter(iir13k,x);
    y5 = y5 .* gain(4);
    y = [y y5];
    
    y6=filter(iir36k,x);
    y6 = y6 .* gain(5);
    y = [y y6];
    
    y7=filter(iir612k,x);
    y7 = y7 .* gain(6);
    y = [y y7];
    
    y8=filter(iir1214k,x);
    y8 = y8 .* gain(7);
    y = [y y8];
    
    y9=filter(iir1416,x);
    y9 = y9 .* gain(8);
    y = [y y9];
else
    y1=filter(fir170,x);
    y1 = y1 .* gain(0);
    y = [y y1];
    
    y2=filter(fir170310,x);
    y2 = y2 .* gain(1);
    y = [y y2];
    
    y3=filter(fir310600,x);
    y3 = y3 .* gain(2);
    y = [y y3];
    
    y4=filter(fir6001000,x);
    y4 = y4 .* gain(3);
    y = [y y4];
    
    y5=filter(fir13k,x);
    y5 = y5 .* gain(4);
    y = [y y5];
    
    y6=filter(fir36k,x);
    y6 = y6 .* gain(5);
    y = [y y6];
    
    y7=filter(fir612k,x);
    y7 = y7 .* gain(6);
    y = [y y7];
    
    y8=filter(fir1214k,x);
    y8 = y8 .* gain(7);
    y = [y y8];
    
    y9=filter(fir1416,x);
    y9 = y9 .* gain(8);
    y = [y y9];
end
subplot(2,1,1);
x1 = fftshift(fft(x));
plot(x1);
subplot(2,1,2);
yf = fftshift(fft(y));
plot(yf);

% filters' analysis function
func analyze(type)
    cd 'W:\Projects\Digital Signal Processing\Audio_equalizer_using_matlab'
    load('filters.mat');
    
    if type == 'IIR'
        % IIR Analysis
        % 0-170 Hz band
        fvtool(iir170);

        % 170-310 Hz band
        fvtool(iir170310);

        % 310-600 Hz band
        fvtool(iir310600);

        % 600-1000 Hz band
        fvtool(iir6001000);

        % 1-3 KHz band
        fvtool(iir13k);

        % 3-6 KHz band
        fvtool(iir36k);

        % 6-12 KHz band
        fvtool(iir612k);

        % 12-14 KHz band
        fvtool(iir1214k);

        % 14-16 KHz band
        fvtool(iir1416k);
        
    else
        
        % FIR Analysis
        % 0-170 Hz band
        fvtool(fir170);

        % 170-310 Hz band
        fvtool(fir170310);

        % 310-600 Hz band
        fvtool(fir310600);

        % 600-1000 Hz band
        fvtool(fir6001000);

        % 1-3 KHz band
        fvtool(fir13k);

        % 3-6 KHz band
        fvtool(fir36k);

        % 6-12 KHz band
        fvtool(fir612k);

        % 12-14 KHz band
        fvtool(fir1214k);

        % 14-16 KHz band
        fvtool(fir1416k);
    end
end
