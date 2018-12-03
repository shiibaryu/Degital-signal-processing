%% inverseA.m
%
%   genrate a 440Hz tone with inverse FFT.
%
Fs = 4000; % sampling rate
L =  8000; % sample length
f = zeros(L,1);
f(880) = L;
yt = ifft(f); % inverse FFT
sound(real(yt), Fs);
