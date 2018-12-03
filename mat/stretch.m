Fs = 8000;%sampling rate
f = 400;%Hz
t = 0:1/Fs:2;%from 0 to 2
y = sin(2*pi*f.*t);%

function y2 = ryu(y, coef, Fs)
N = fix(0.05*Fs);%Number of samples
Hs = floor(N/2); %Hop size of Sythesis Frame 
Ha = floor(Hs*coef);%Hop size of Ha
[L,] = size(y);
numFrame = floor((L-N)/Ha); 

for i=1:numFrame-1
    xa = y(Ha*(i-1)+1:Ha*(i-1)+N); 
    window = hanning(N);
    xa = xa.*window;
    y2(Hs*(i-1)+1:Hs*(i-1)+N) = y2(Hs*(i-1)+1:Hs*(i-1)+N) + xa(1:N);
end
end

