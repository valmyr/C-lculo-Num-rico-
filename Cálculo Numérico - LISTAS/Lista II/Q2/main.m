#Aluno: Valmir Ferreira da Silva
#Matrícula: 119211110
#___________________para executar o código "main"_______________
%funQ2;

funQ2 = @(x) 3*(x.^5)+5*(x.^2)-18*x-17;
pkg load optim
x = [-5:0.001:5];#pontos em x
iteracoes = 1000;#repetições
epsilon = 10^-5;#tolerancia
#limites do gráfico
xxyy = [-5 5 -30 20];
%Plot do gráfico da questão 2
plt(t,funQ2(t),xxyy,'-r');#plot de funQ2
xlabel("Eixo x");
ylabel("Eixo y");
title("Questão 2 - Raiz Bisseção");
plot([0 0], [-30 20], '-k');
plot([-5 5], [0 0],'-k');
legend("f(x) = 3*x^5+5*x^2-18*x-17");
#Método Da bissecção aplicado na função 2;
#procurando intervalos da função 2
intervalosEncontrados = intervalos(funQ2,-5,5);
#plot da raiz da questão 2
raizesQuestao2ApBisseccao = selecionadorDeMetodo(intervalosEncontrados,funQ2,epsilon,iteracoes,1);
raizesQuestao2ApFalsaPosicao = selecionadorDeMetodo(intervalosEncontrados,funQ2,epsilon,iteracoes,2);
raizesQuestao2ApFalsaPosicaoModificacao = selecionadorDeMetodo(intervalosEncontrados,funQ2,epsilon,iteracoes,3);
raizesQuestao2ApNewton = selecionadorDeMetodo(intervalosEncontrados,funQ2,epsilon,iteracoes,4);
raizesQuestao2ApSecante = selecionadorDeMetodo(intervalosEncontrados,funQ2,epsilon,iteracoes,5);
fprintf("\n\n[Bissecção - Questão 2]\n");
#Exibindo raízes
for i = 1: size(raizesQuestao2ApBisseccao)(1)
    fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao2ApBisseccao(i));
 endfor
fprintf("\n\n[Posição Falsa -  Questão 2]\n");
#Exibindo raízes
for i = 1: size(raizesQuestao2ApFalsaPosicao)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao2ApFalsaPosicao(i));
 endfor
fprintf("\n\n[Posição Falsa Modificada -  Questão 2]\n");
#Exibindo raízes
for i = 1: size(raizesQuestao2ApFalsaPosicaoModificacao)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao2ApFalsaPosicaoModificacao(i));
 endfor
#Exibindo raízes
fprintf("\n\n[Metodo de Newton -  Questão 2]\n");
for i = 1: size(raizesQuestao2ApNewton)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao2ApNewton(i));
 endfor
fprintf("\n\n[Método das Secantes -  Questão 2]\n");
#Exibindo raízes
for i = 1: size(raizesQuestao2ApSecante)(1)
  fprintf("Raiz [%d] aproximadamente: %.5f\n",i,raizesQuestao2ApSecante(i));
 endfor