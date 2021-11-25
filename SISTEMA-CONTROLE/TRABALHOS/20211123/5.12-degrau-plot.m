# Fazer analiticamente e computacionalmente
pkg load control;
intervalo = 0.1
#s = tf('s') #modelo para função de transferência
#f = 36/((s²)+(2*s)+(36)) #função de transferência
num = [36]
den = [1 2 36]
f = tf(num, den)
t = 0:0.1:10;
step(f,t);
grid
title('Unit-Step Response Curve of G(s) = 36/((s²)+(2*s)+(36))');
