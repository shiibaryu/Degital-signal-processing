Fs = 8000;%sampling rate
f = 400;%Hz
t = 0:1/Fs:2;%from 0 to 2
y = sin(2*pi*f.*t);%wave 
% coef = input("input strech=" );
%ª
coef = 0.5;%coefficient
y2 = stretch(y,coef,Fs);%new wave
sound(y2,Fs);%sound
plot(t(1:100),y(1:100));%plot1:100));