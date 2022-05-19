clc
close all
fs = 44100; % to be taken from input part
fn = fs/2; % normalized frequency
type = 'iir'; % to be taken from input part


if type == 'fir'
    % IIR filters
    N = 4; % order of the system
    
    %0-170 
    [b1,a1] = butter(N,170/fn);
    analyzeIIR(N,fn,fs,b1,a1,170,'4th order 0-170 Hz IIR LPF');
    
    %170-310
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [b2,a2] = butter(N,[170/fn,310/fn]);
    analyzeIIR(N,fn,fs,b2,a2,[170 310],'4-th order 170-310 Hz IIR BPF');
    
    %310-600
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [b3,a3] = butter(N,[310 600]/fn);
    analyzeIIR(N,fn,fs,b3,a3,[310 600],'4-th order 310-600 Hz IIR BPF');
    
    %600-1000
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [b4,a4] = butter(N,[600 1000]/fn);
    analyzeIIR(N,fn,fs,b4,a4,[600 1000],'4-th order 600-1000 Hz IIR BPF');
    
    %1-3
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [b5,a5] = butter(N,[1000 3000]/fn);
    analyzeIIR(N,fn,fs,b5,a5,[1000 3000],'4-th order 1-3 KHz IIR BPF');
    
    %3-6 
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [b6,a6] = butter(N,[3000 6000]/fn);
    analyzeIIR(N,fn,fs,b6,a6,[3000 6000],'4-th order 3-6 KHz IIR BPF');
    
    %6-12 
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [b7,a7] = butter(N,[6000 12000]/fn);
    analyzeIIR(N,fn,fs,b7,a7,[6000 12000],'4-th order 6-12 KHz IIR BPF');
    
    %12-14 
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [b8,a8] = butter(N,[12000 14000]/fn);
    analyzeIIR(N,fn,fs,b8,a8,[12000 14000],'4-th order 12-14 KHz IIR BPF');
    
    %14-16 
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    [b9,a9] = butter(N,[14000 16000]/fn);
    analyzeIIR(N,fn,fs,b9,a9,[14000 16000],'4th order 14-16 KHz IIR BPF');
else
    % FIR filters
    N = 40;
    
    %0-170
    coef1 = fir1(N,170/fn);
    analyzeFIR(N,fn,fs,coef1,170,'40-th order 0-170 Hz FIR LPF');
    
    %170-310
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    coef2 = fir1(N,[170 310]/fn);
    analyzeFIR(N,fn,fs,coef2,[170 310],'40-th order 170-310 HZ FIR BPF');
    
    %310-600
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    coef3 = fir1(N,[310 600]/fn);
    analyzeFIR(N,fn,fs,coef3,[310 600],'40-th order 310-600 HZ FIR BPF');
    
    %600-1000
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    coef4 = fir1(N,[600 1000]/fn);
    analyzeFIR(N,fn,fs,coef4,[600 1000],'40-th order 600-1000 HZ FIR BPF');
    
    %1-3
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    coef5 = fir1(N,[1000 3000]/fn);
    analyzeFIR(N,fn,fs,coef5,[1000 3000],'40-th order 1-3 KHZ FIR BPF');
    
    %3-6
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    coef6 = fir1(N,[3000 6000]/fn);
    analyzeFIR(N,fn,fs,coef6,[3000 6000],'40-th order 3-6 KHZ FIR BPF');
    
    %6-12
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    coef7 = fir1(N,[6000 12000]/fn);
    analyzeFIR(N,fn,fs,coef7,[6000 12000],'40-th order 6-12 KHZ FIR BPF');
    
    %12-14
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    coef8 = fir1(N,[12000 14000]/fn);
    analyzeFIR(N,fn,fs,coef8,[12000 14000],'40-th order 12-14 KHZ FIR BPF');
    
    %14-16
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    coef9 = fir1(N,[14000 16000]/fn);
    analyzeFIR(N,fn,fs,coef9,[14000 16000],'40-th order 14-16 KHZ FIR BPF');  
end


%START HERE



























function analyzeIIR(N,fn,fs,b,a,fc,name)
    figure('name',name);

    [z,p,k] = butter(N,fc/fn);
    
    [H,w] = freqz(b,a,[],fs);
    
    subplot(3,2,1)
    plot(w/pi,abs(H));grid;
    title('Magnitude spectrum')
    xlabel('Frequency,(Hz)')
    ylabel('Magnitude response')

    subplot(3,2,2)
    plot(w/pi,angle(H)*180/pi);grid;
    title('Phase spectrum')
    xlabel('Frequency,(Hz)')
    ylabel('Phase response')

    [h,t] = impz(b,a,[],fs);
    subplot(3,2,3)
    plot(t,h);grid;
    title('Impulse response')
    xlabel('Time')
    ylabel('Amplitude')

    [u,t] = stepz(b,a,[],fs);
    subplot(3,2,4)
    plot(t,u);grid;
    title('Step response')
    xlabel('Time')
    ylabel('Amplitude')

    subplot(3,2,[5 6])
    zplane(b,a);grid;
    title('Pole-Zero plot')
    
    Zeros = z
    Poles = p
    Gain = k
    
end

function analyzeFIR(N,fn,fs,coef,fc,name)
    figure('name',name);
    
    [z,k] = fir1(N,fc/fn);
    
    [H,w] = freqz(coef,1,[],fs);
  
    subplot(3,2,1)
    plot(w/pi,abs(H));grid;
    title('Magnitude spectrum')
    xlabel('Frequency,(Hz)')
    ylabel('Magnitude response')
    
    subplot(3,2,2)
    plot(w/pi,angle(H)*180/pi);grid;
    title('Phase spectrum')
    xlabel('Frequency,(Hz)')
    ylabel('Phase response')
    
    [h,t] = impz(coef,1,[],fs);
    subplot(3,2,3)
    plot(t,h);grid;
    title('Impulse response')
    xlabel('Time')
    ylabel('Amplitude')
    
    [u,t] = stepz(coef,1,[],fs);
    subplot(3,2,4)
    plot(t,u);grid;
    title('Step response')
    xlabel('Time')
    ylabel('Amplitude')
    
    subplot(3,2,[5 6])
    zplane(coef,1);grid;
    title('Pole-Zero plot')
    
    Zeros = z
    Poles = 0
    Gain = k
    
end