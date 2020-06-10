[b,a] = ellip(1, 0.5, 100, 0.4);
[h,w] = freqz(b,a,512);
T=0.001; hz=w/(2*pi*T);
plot(hz, abs(h)); 
grid on;
xlabel('Hz');
ylabel('Amplitude');
title('Filtro Passa Altas Eliptico');