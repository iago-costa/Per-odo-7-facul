pkg load control;
s = tf('s') #modelo para função de transferência
f = 5/(s+2) #função de transferência
#num = [5];
#dem = [1 2];
t = 0:0.1:10;
lsim(f,t,t);
grid
title('Unit-Ramp Response Curve of G(s) = 5/(s+2)');