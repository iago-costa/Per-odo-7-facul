# Fazer analiticamente e computacionalmente
pkg load control;
intervalo = 0.001
#s = tf('s') #modelo para função de transferência
#f = 36/((s²)+(2*s)+(36)) #função de transferência
num = [36]
den = [1 2 36]
f = tf(num, den)
t = 0:intervalo:5;
[y,x,t] = step(f,t);

r = 1; 
while y(r)<1.0001;
    r = r+1;
end;

# Tempo subida
tempo_subida = (r-1)*intervalo;


# Tempo de pico
[ymax, tp] = max(y);
tempo_pico = (tp-1)*intervalo;

# Máximo de sobre-sinal
max_sobressinal = ymax-1;

# Tempo de acomodação
s = length(t);
while y(s) > 0.98 & y(s) > 1.02;
    s = s-1;
end;
tempo_acomodacao = (s-1)*intervalo;