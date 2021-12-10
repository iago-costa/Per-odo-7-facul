# aplicando a função rampa
pkg load control;
#s = tf('s') #modelo para função de transferência
#f = 6/((2*(s²))+(4*s)+(6)) #função de transferência
num = [6]
den = [2 4 6]
f = tf(num, den)
t = 0:0.1:10;
lsim(f,t,t);
grid
title('Unit-Ramp Response Curve of G(s) = 6/((2*(s²))+(4*s)+(6))');