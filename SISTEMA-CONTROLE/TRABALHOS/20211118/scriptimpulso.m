pkg load control;
#s = tf('s') #modelo para função de transferência
#f = 5/(s+2) #função de transferência
num = [5]
dem = [1 2]
f = tf(num, dem)
impulse(f); #aplicando a resposta ao impulso na função de transferência
grid
title('Unit-Impulse Response of G(s) 5/(s+2)');