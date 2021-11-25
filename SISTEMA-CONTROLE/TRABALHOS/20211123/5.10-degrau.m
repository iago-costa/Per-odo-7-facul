# Fazer analiticamente e computacionalmente
pkg load control;
#s = tf('s') #modelo para função de transferência
#f = 10/((s²)+(2*s)+(10)) #função de transferência
num = [10]
den = [1 2 10]
f = tf(num, den)
t = 0:0.1:10;
step(f,t);
grid
title('Unit-Step Response Curve of G(s) = 10/((s²)+(2*s)+(10))');