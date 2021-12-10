pkg load control;
#s = tf('s') #modelo para função de transferência
#f = 10/((s²)+(2*s)+(10)) #função de transferência
num = [10]
den = [1 2 10]
f = tf(num, den)
impulse(f); #aplicando a resposta ao impulso na função de transferência
grid
title('Unit-Impulse Response of G(s) 10/((s²)+(2*s)+(10))');