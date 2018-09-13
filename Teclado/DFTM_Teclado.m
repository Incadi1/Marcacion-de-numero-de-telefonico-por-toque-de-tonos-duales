
%Referencia https://youtu.be/-stc1b24QhQ
clear all
close all

%Teclado 
keypad = ['1','2','3','4','5','6','7','8','9','*','#']

%DTMF low frequency
fLow = [697 770 852 941] %22.304 24.64 27.264 30.112

%DTMF high frequency 
FHigh = [1209 1336 1477 ] %38.688 42.752 47.264 52.265

%Sampling rate
Fs = 32768

%Samples
N = 256;

%Energy of signal (low(1) and high (2))
Power1 = 0;
Power2 = 0;

%Index of signal(low(1) and high (2))
Index1 = 0;
Index2 = 0;

%Generate DTMF tone
lo = 0.999969*cos(2*pi*697*(0:N-1)/Fs);
hi = 0.999969*cos(2*pi*1209*(0:N-1)/Fs);
data = lo + hi;

%Play DTMF signal
soundsc(data);

%Fft of DTMF tone
fft_data = fft(data);
    
%Magnitude of goertzel (DFT) value
mag_data = abs(fft_data);

%Graphs the magnitude of high and low DTMF signal
%Stem(mag_data)
%Xlabel('Samples'); YLabel('Magnitude'); Tittle('DFT Magnitude');

%Find index of low and high DTMF tone
k = find(mag_data > 80,2);
index_low = k(1);
index_high = k(2);

%Finds low frequency foe DTMF signal 
for  n= 1:length(FHigh)
    detected_tone = (index_low - 0.5)*Fs/N;
    
    if((detected_tone > FLow(n)) && (detected_tone < FLow(n) + 40))
        Power1 = detected_tone;
        Index1 = n;
        
    else
        Power1 = Power1;
    end
end

    
%Finds high frequency foe DTMF signal 
for  n= 1:length(FHigh)
    detected_tone = (index_high - 0.5)*Fs/N;
    
    if((detected_tone > FHigh(n)) && (detected_tone < FHigh(n) + 40))
        Power2 = detected_tone;
        Index2 = n;
        
    else
        Power2 = Power2;
    end
end

fprintf('El primer tono es %Hz\n', FLow(index1), FHigh(Index2));
fprintf('El teclado es presionado si: %s\n', keypad(Index1,Index2));










