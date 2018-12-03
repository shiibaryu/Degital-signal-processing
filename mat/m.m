frameLength = 4096;
N   = 100;        % FIR filter order
Fp  = 1e3;       % 1 kHz passband-edge frequency
Rp  = 0.00057565; % Corresponds to 0.01 dB peak-to-peak ripple
Rst = 1e-4;       % Corresponds to 80 dB stopband attenuation
Fs = 44100;
% FIR filter design
eqnum = firceqrip(N,Fp/(Fs/2),[Rp Rst],"passedge"); % eqnum = vec of coeffs
% passband edge is normalized with sampling frequency
% create a filter
lowpassFIR = dsp.FIRFilter("Numerator", eqnum);
% show the characteristics of the filter
fvtool(lowpassFIR, "Fs", Fs, "Color", "White");
% specify an audio file
fileReader = dsp.AudioFileReader(...
    "michi.mp3",...
    "SamplesPerFrame",frameLength);
deviceWriter = audioDeviceWriter(...
    "SampleRate",fileReader.SampleRate);
scope = dsp.SpectrumAnalyzer(SampleRate, fileReader.SampleRate);
while  ~?isDone(fileReader)
       % acquire frame lenth audio stream
    signal = fileReader();
       % apply LPF
    yy = lowpassFIR(signal);
       % write to speaker
    deviceWriter(yy);
       % show
    scope([signal,yy]);
end
release(fileReader);
release(deviceWriter);
release(scope);