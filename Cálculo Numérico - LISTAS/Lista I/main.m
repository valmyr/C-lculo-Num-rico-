#Aluno: Valmir Ferreira da Silva
#Matrícula: 119211110
#___________________para executar o código "main"_______________
funQ4;
funQ5;

pkg load optim
x = [-5:0.001:5];#pontos em x
iteracoes = 1000;#repetições
epson = 10^-5;#tolerancia

#limites do gráfico
xxyy = [-5 5 -4 4];

%Plot do gráfico da questão 4
subplot(2,1,1);
t = x;
#retirando assíntotas
t(abs(funQ4(t)) > 5) = nan;
plt(t,funQ4(t),xxyy,'-r');#plot de funQ4
xlabel("Eixo x");
ylabel("Eixo y");
title("Questão 4 - Raiz Bisseção");
plot([0 0], [-5 5], '-k');
plot([-5 5], [0 0],'-k');
legend("f(x) = tan(x-4) - 0.4x");
#plot do gráfico da questão 5
subplot(2,1,2);
xxyy = [-5 5 -3 1];
plt(x,funQ5(x),xxyy,'-r');#plot de funQ5
xlabel("Eixo x");
ylabel("Eixo y");
title("Questão 5 - Raiz Bisseção");
plot([0 0], [-5 5], '-k');
plot([-5 5], [0 0],'-k');
legend("f(x) = 3x*exp(-3x^2) - 2sin(x)-1");
#Método Da bissecção aplicado na função 4;
#procurando intervalos da função 4
intervalosEncontrados = intervalos(funQ4,-5,5);
subplot(2,1,1);#lembrar de mudar para o gráfico 1
#plot da raiz da questão 4
raizesQuestao4Ap = selecionadorDeMetodo(intervalosEncontrados,funQ4,epson,iteracoes,1);
fprintf("\n\n[Bissecção - Questão 4]\n");
raizesQuestao4Ap = raizesQuestao4Ap(~isnan(raizesQuestao4Ap));
#Exibindo raízes
for i = 1: size(raizesQuestao4Ap)(1)
    fprintf("Raiz [%d] aproximadamente: %.3f\n",i,raizesQuestao4Ap(i));
 endfor
 
raizesQuestao4Ap = selecionadorDeMetodo(intervalosEncontrados,funQ4,epson,iteracoes,2);
raizesQuestao4Ap = raizesQuestao4Ap(~isnan(raizesQuestao4Ap));
fprintf("\n\n[Posição Falsa -  Questão 4]\n");
#Exibindo raízes
for i = 1: size(raizesQuestao4Ap)(1)
  fprintf("Raiz [%d] aproximadamente: %.3f\n",i,raizesQuestao4Ap(i));
 endfor
raizesQuestao4Ap = selecionadorDeMetodo(intervalosEncontrados,funQ4,epson,iteracoes,3);
raizesQuestao4Ap = raizesQuestao4Ap(~isnan(raizesQuestao4Ap));
fprintf("\n\n[Posição Falsa Modificada -  Questão 4]\n");
#Exibindo raízes
for i = 1: size(raizesQuestao4Ap)(1)
  fprintf("Raiz [%d] aproximadamente: %.3f\n",i,raizesQuestao4Ap(i));
 endfor
#Método Da bissecção aplicado na função 5;
#procurando intervalos da função 5
intervalosEncontrados = intervalos(funQ5,-5,5);
subplot(2,1,2);#lembrar de mudar para o gráfico 1
#plot da raiz da questão 5
raizesQuestao5Ap = selecionadorDeMetodo(intervalosEncontrados,funQ5,epson,iteracoes,1);
raizesQuestao5Ap = raizesQuestao5Ap(~isnan(raizesQuestao5Ap));
fprintf("\n\n[Bissecção - Questão 5]\n");
for i = 1: size(raizesQuestao5Ap)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao5Ap(i));
 endfor
 
raizesQuestao5Ap = selecionadorDeMetodo(intervalosEncontrados,funQ5,epson,iteracoes,2);
raizesQuestao5Ap = raizesQuestao5Ap(~isnan(raizesQuestao5Ap));
#Exibindo raízes
fprintf("\n\n[Posição Falsa - Questão 5]\n");
for i = 1: size(raizesQuestao5Ap)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao5Ap(i));
 endfor
raizesQuestao5Ap = selecionadorDeMetodo(intervalosEncontrados,funQ5,epson,iteracoes,3);
raizesQuestao5Ap = raizesQuestao5Ap(~isnan(raizesQuestao5Ap));
fprintf("\n\n[Posição Falsa Modificada -  Questão 5]\n");
#Exibindo raízes
for i = 1: size(raizesQuestao5Ap)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao5Ap(i));
 endfor