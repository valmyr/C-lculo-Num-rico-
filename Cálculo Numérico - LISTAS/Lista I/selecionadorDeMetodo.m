#Arg1 - intervalosEncontrados: intervalo onde vamos aplicar o método.
#Arg2 - fun                  : função  "                           "
#Arg3 - epson                : tolerância para a aproximação
#Arg4 - iterações            : quantidade de repetições
#Arg5 - flag                 : variável para selecionador o método de resolução 
# flag = 1 -Bissecção, flag = 2 - Posicao Falsa,flag > 2 PosicaoFalsaModificada
function raizes = selecionadorDeMetodo(intervalosEncontrados,fun,epson,iteracoes,flag)
  k = 1;#iterando as raizes encontradas
  i = 1;
  r = [];# raizes encontradas
  while(i <= (size(intervalosEncontrados)(1)))
    #x0 reprensenta o inicio do intervalo
    #x1 representa o final "             "
    x0 = intervalosEncontrados(i);
    x1 = intervalosEncontrados(i+1);
    #   o plot dos pontos encontrados e apenas em flag == 1, ou seja, estou mostrando no gráfico
    # as raizes encontradas pelo método da bissecção com o scatter.
    if(flag == 1)
        #adicionando as raizes encontras em r
        r(end+1,:) = Bisseccao(x0,x1,fun,epson,iteracoes);
        scatter(r(k),0,'+',"linewidth",3);
        k+=1;
    elseif(flag ==2)
        #adicionando as raizes encontras em r
        r(end+1,:) = PosicaoFalsa(x0,x1,fun,epson,iteracoes);
    else
        #adicionando as raizes encontras em r
        r(end+1,:) = PosicaoFalsaModificada(x0,x1,fun,epson,iteracoes);
    endif
    i+=2;#troca de intervalo
  endwhile
  raizes = r;
 endfunction
  