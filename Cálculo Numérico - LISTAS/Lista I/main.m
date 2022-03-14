#Aluno: Valmir Ferreira da Silva
#Matr�cula: 119211110
#___________________para executar o c�digo "main"_______________
funQ4;
funQ5;

pkg load optim
x = [-5:0.001:5];#pontos em x
iteracoes = 1000;#repeti��es
epson = 10^-5;#tolerancia

#limites do gr�fico
xxyy = [-5 5 -4 4];

%Plot do gr�fico da quest�o 4
subplot(2,1,1);
t = x;
#retirando ass�ntotas
t(abs(funQ4(t)) > 5) = nan;
plt(t,funQ4(t),xxyy,'-r');#plot de funQ4
xlabel("Eixo x");
ylabel("Eixo y");
title("Quest�o 4 - Raiz Bisse��o");
plot([0 0], [-5 5], '-k');
plot([-5 5], [0 0],'-k');
legend("f(x) = tan(x-4) - 0.4x");
#plot do gr�fico da quest�o 5
subplot(2,1,2);
xxyy = [-5 5 -3 1];
plt(x,funQ5(x),xxyy,'-r');#plot de funQ5
xlabel("Eixo x");
ylabel("Eixo y");
title("Quest�o 5 - Raiz Bisse��o");
plot([0 0], [-5 5], '-k');
plot([-5 5], [0 0],'-k');
legend("f(x) = 3x*exp(-3x^2) - 2sin(x)-1");
#M�todo Da bissec��o aplicado na fun��o 4;
#procurando intervalos da fun��o 4
intervalosEncontrados = intervalos(funQ4,-5,5);
subplot(2,1,1);#lembrar de mudar para o gr�fico 1
#plot da raiz da quest�o 4
raizesQuestao4Ap = selecionadorDeMetodo(intervalosEncontrados,funQ4,epson,iteracoes,1);
fprintf("\n\n[Bissec��o - Quest�o 4]\n");
raizesQuestao4Ap = raizesQuestao4Ap(~isnan(raizesQuestao4Ap));
#Exibindo ra�zes
for i = 1: size(raizesQuestao4Ap)(1)
    fprintf("Raiz [%d] aproximadamente: %.3f\n",i,raizesQuestao4Ap(i));
 endfor
 
raizesQuestao4Ap = selecionadorDeMetodo(intervalosEncontrados,funQ4,epson,iteracoes,2);
raizesQuestao4Ap = raizesQuestao4Ap(~isnan(raizesQuestao4Ap));
fprintf("\n\n[Posi��o Falsa -  Quest�o 4]\n");
#Exibindo ra�zes
for i = 1: size(raizesQuestao4Ap)(1)
  fprintf("Raiz [%d] aproximadamente: %.3f\n",i,raizesQuestao4Ap(i));
 endfor
raizesQuestao4Ap = selecionadorDeMetodo(intervalosEncontrados,funQ4,epson,iteracoes,3);
raizesQuestao4Ap = raizesQuestao4Ap(~isnan(raizesQuestao4Ap));
fprintf("\n\n[Posi��o Falsa Modificada -  Quest�o 4]\n");
#Exibindo ra�zes
for i = 1: size(raizesQuestao4Ap)(1)
  fprintf("Raiz [%d] aproximadamente: %.3f\n",i,raizesQuestao4Ap(i));
 endfor
#M�todo Da bissec��o aplicado na fun��o 5;
#procurando intervalos da fun��o 5
intervalosEncontrados = intervalos(funQ5,-5,5);
subplot(2,1,2);#lembrar de mudar para o gr�fico 1
#plot da raiz da quest�o 5
raizesQuestao5Ap = selecionadorDeMetodo(intervalosEncontrados,funQ5,epson,iteracoes,1);
raizesQuestao5Ap = raizesQuestao5Ap(~isnan(raizesQuestao5Ap));
fprintf("\n\n[Bissec��o - Quest�o 5]\n");
for i = 1: size(raizesQuestao5Ap)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao5Ap(i));
 endfor
 
raizesQuestao5Ap = selecionadorDeMetodo(intervalosEncontrados,funQ5,epson,iteracoes,2);
raizesQuestao5Ap = raizesQuestao5Ap(~isnan(raizesQuestao5Ap));
#Exibindo ra�zes
fprintf("\n\n[Posi��o Falsa - Quest�o 5]\n");
for i = 1: size(raizesQuestao5Ap)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao5Ap(i));
 endfor
raizesQuestao5Ap = selecionadorDeMetodo(intervalosEncontrados,funQ5,epson,iteracoes,3);
raizesQuestao5Ap = raizesQuestao5Ap(~isnan(raizesQuestao5Ap));
fprintf("\n\n[Posi��o Falsa Modificada -  Quest�o 5]\n");
#Exibindo ra�zes
for i = 1: size(raizesQuestao5Ap)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao5Ap(i));
 endfor