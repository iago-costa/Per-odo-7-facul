%Fs = 10000; %frequencia de amostragem
%t = [0:1/Fs:2]; %período
%signal = sin(2*pi*50*t); %50 hertz
%plot(t, signal);
%carrier = sin(2*pi*20E3*t); %20 khertz %portadora
%plot(t, carrier);

Fs = 1E6; %1 mega hertz
t = [0:1/Fs:2]; %atualizando periodo
signal = 0.3*sin(2*pi*50*t) %amplitude de 0.3
%plot(t, signal);
carrier = sin(2*pi*20E3*t); %20 khertz %portadora
%plot(t, carrier);


modulated = signal .* carrier;
%plot(t, modulated)
% ocorre mudanca de fase na dsb-sc por isso 
% é preciso um oscilador local
% para realizar a demodulação do sinal

%my_fft(signal, Fs) % sinal descrito em frequencia

%my_fft(carrier, Fs) % portadora descrita em frequencia

%my_fft(modulated) % sinal modulado descrito em frequencia

subplot(3,1,1);
plot(t, signal);
title('Modulante');

subplot(3,1,2);
plot(t, carrier);
title('Portadora');

subplot(3,1,3);
plot(t, modulated);
title('Modulado');
