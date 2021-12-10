pkg load control;
#s = tf('s') #modelo para função de transferência
#f = 6/((2*(s²))+(4*s)+(6)) #função de transferência
num = [6]
den = [2 4 6]
f = tf(num, den)
impulse(f); #aplicando a resposta ao impulso na função de transferência
grid
title('Unit-Impulse Response of G(s) 6/((2*(s²))+(4*s)+(6))');