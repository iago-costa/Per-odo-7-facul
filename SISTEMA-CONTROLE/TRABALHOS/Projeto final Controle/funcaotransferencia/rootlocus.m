pkg load control;
s = tf('s') #modelo para função de transferência
f = 6/((2*(s^2))+(4*s)+(6)) #função de transferência
num = [6]
den = [2 4 6]
rlocusx(f) #plota o root locus
%v = [-6 6 -6 6];
%axis(v);
#grid;
#title( 'Root locus Plot G(s) = 6/((2*(s²))+(4*s)+(6))' );