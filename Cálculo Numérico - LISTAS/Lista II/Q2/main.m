#Aluno: Valmir Ferreira da Silva
#Matr�cula: 119211110
#___________________para executar o c�digo "main"_______________
%funQ2;

funQ2 = @(x) 3*(x.^5)+5*(x.^2)-18*x-17;
pkg load optim
x = [-5:0.001:5];#pontos em x
iteracoes = 1000;#repeti��es
epsilon = 10^-5;#tolerancia
#limites do gr�fico
xxyy = [-5 5 -30 20];
%Plot do gr�fico da quest�o 2
plt(t,funQ2(t),xxyy,'-r');#plot de funQ2
xlabel("Eixo x");
ylabel("Eixo y");
title("Quest�o 2 - Raiz Bisse��o");
plot([0 0], [-30 20], '-k');
plot([-5 5], [0 0],'-k');
legend("f(x) = 3*x^5+5*x^2-18*x-17");
#M�todo Da bissec��o aplicado na fun��o 2;
#procurando intervalos da fun��o 2
intervalosEncontrados = intervalos(funQ2,-5,5);
#plot da raiz da quest�o 2
raizesQuestao2ApBisseccao = selecionadorDeMetodo(intervalosEncontrados,funQ2,epsilon,iteracoes,1);
raizesQuestao2ApFalsaPosicao = selecionadorDeMetodo(intervalosEncontrados,funQ2,epsilon,iteracoes,2);
raizesQuestao2ApFalsaPosicaoModificacao = selecionadorDeMetodo(intervalosEncontrados,funQ2,epsilon,iteracoes,3);
raizesQuestao2ApNewton = selecionadorDeMetodo(intervalosEncontrados,funQ2,epsilon,iteracoes,4);
raizesQuestao2ApSecante = selecionadorDeMetodo(intervalosEncontrados,funQ2,epsilon,iteracoes,5);
fprintf("\n\n[Bissec��o - Quest�o 2]\n");
#Exibindo ra�zes
for i = 1: size(raizesQuestao2ApBisseccao)(1)
    fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao2ApBisseccao(i));
 endfor
fprintf("\n\n[Posi��o Falsa -  Quest�o 2]\n");
#Exibindo ra�zes
for i = 1: size(raizesQuestao2ApFalsaPosicao)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao2ApFalsaPosicao(i));
 endfor
fprintf("\n\n[Posi��o Falsa Modificada -  Quest�o 2]\n");
#Exibindo ra�zes
for i = 1: size(raizesQuestao2ApFalsaPosicaoModificacao)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao2ApFalsaPosicaoModificacao(i));
 endfor
#Exibindo ra�zes
fprintf("\n\n[Metodo de Newton -  Quest�o 2]\n");
for i = 1: size(raizesQuestao2ApNewton)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao2ApNewton(i));
 endfor
fprintf("\n\n[M�todo das Secantes -  Quest�o 2]\n");
#Exibindo ra�zes
for i = 1: size(raizesQuestao2ApSecante)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao2ApSecante(i));
 endfor