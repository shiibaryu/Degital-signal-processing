
%% basicFT
%  a tone is decomposed into res - 8000 Hz
%
Fs = 8000; %sampling rate
L = 1; % length in second
t = [0:1/Fs:L-1/Fs];
res = 1/L; % frequency resolution
numF = Fs/res; % frequency components number
f440 = cos(2*pi*440*t);
fc = zeros(numF, L*Fs);
fs = zeros(numF, L*Fs);
a = zeros(numF,1);
b = zeros(numF,1);
f = zeros(numF,1);
for i=1:numF
    fc(i,:) = cos(2*pi*i*res*t); %fundamental cosines
    fs(i,:) = sin(2*pi*i*res*t);  % fundamental sines
end
for i=1:numF
    f(i) = i*res;
    for j = 1:L*Fs
      a(i) = a(i) + fc(i,j) * f440(j)/L/Fs;
      b(i) = b(i) + fs(i,j) * f440(j)/L/Fs;
    end
end
plot(f, a, f, b);

