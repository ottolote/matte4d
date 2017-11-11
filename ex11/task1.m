% Discrete time series x
x = [0, 2, 3, 7];

% Fast fourier transform of x, then take the real part
y = fft(x);
r = real(y);

plot(r);