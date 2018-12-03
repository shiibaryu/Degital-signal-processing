Fs = 44100; % sampling rate
L =  44100; % sample length
N = 1000; % passband edge
f = zeros(L,1);
for i=1:N
f(i) = L ; end
yt = ifft(f); % inverse FFT
plot(real(yt));
sound(real(yt), Fs);
