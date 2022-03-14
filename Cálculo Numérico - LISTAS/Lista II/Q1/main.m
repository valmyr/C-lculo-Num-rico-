pkg load optim
%Valmir Ferreira da Silva
%119211110
%Dados de entrada Quest�o 1

iter = 40;
#Plot dos eixos
plot([-5 5],[0 0],"-k");
hold on
plot([0 0],[-30,50],"-k");
%defini��o da fun��o
f = @(x) 2*exp(x)-5*cos(2*x);
t = [-5:0.01:5];
%Plot do gr�fico
plot(t,f(t),"linewidth",2);
xlabel("Eixo X");
ylabel("Eixo Y");
%limites do gr�fico
axis([-5 5 -30 50]);
legend("f(x) = 2e^x - 5cos(2x)");
raiz_newton_metodo = newton_metodo(f,iter,tolerancia);
raiz_secante_metodo = secante_metodo(f,iter,tolerancia);
scatter(raiz,0);
fprintf("Raiz pelo metodo de newton = %.4f, Toler�ncia = %.4f, N�mero de itera��es = %d\n",raiz_newton_metodo,tolerancia,i);
fprintf("Raiz pelo metodo das secantes = %.4f, Toler�ncia = %.4f, N�mero de itera��es = %d\n",raiz_secante_metodo,tolerancia,i);
