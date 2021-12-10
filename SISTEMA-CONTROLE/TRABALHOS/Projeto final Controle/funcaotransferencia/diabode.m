pkg load control;
s = tf('s') #modelo para função de transferência
f = 6/((2*(s^2))+(4*s)+(6)) #função de transferência
#num = [6]
#den = [2 4 6]
bode(f)