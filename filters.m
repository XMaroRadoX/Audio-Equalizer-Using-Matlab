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


% filters' analysis function
function analyze(type)
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
