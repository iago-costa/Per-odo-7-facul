#aplicando função degrau
pkg load control;
#s = tf('s') #modelo para função de transferência
#f = 8.352/((s²)+(3.988*s)+(8.352)) #função de transferência
num = [8.352]
den = [1 3.988 8.352]
f = tf(num, den)
t = 0:0.001:5;
step(f, t);
grid
title('Unit-Step Response Curve of G(s) = 8.352/((s²)+(3.988*s)+(8.352))');


