close all
pkg load control;
t = 0:0.1:10;
zeta = [1 3.16];
hold on
for n = 1:2;
    num = [10];
    den = [1 zeta(n) 10];
    f = tf(num, den)
    [y,x,tz] = step(f,t);
    
    plot(t,y)
end

grid
title('Plot of Unit-Step Response Curves Questão 5.7')
xlabel('t (sec)')
ylabel('Response')

text(3.5, 1.5, 'azul: ft = 10/(s²+s+10)')
text(3.5, 1.7, 'vermelho: ft = 10/(s²+3.16s+10)')
hold off