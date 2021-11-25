
pkg load control;
s = tf('s') #modelo para função de transferência
f = 1/(s*(s+1)) #função de transferência
t = 0:0.1:10;
step(f,t);
grid
title('Unit-Step Response Curve of G(s) = 1/(1*(s+2))');
