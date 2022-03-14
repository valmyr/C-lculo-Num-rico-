#Arg1 - intervalosEncontrados: intervalo onde vamos aplicar o m�todo.
#Arg2 - fun                  : fun��o  "                           "
#Arg3 - epson                : toler�ncia para a aproxima��o
#Arg4 - itera��es            : quantidade de repeti��es
#Arg5 - flag                 : vari�vel para selecionador o m�todo de resolu��o 
function raizes = selecionadorDeMetodo(intervalosEncontrados,fun,epsilon,iteracoes,flag)
  k = 1;#iterando as raizes encontradas
  i = 1;
  r = [];# raizes encontradas
  while(i <= (size(intervalosEncontrados)(1)))
    #x0 reprensenta o inicio do intervalo
    #x1 representa o final "             "
    x0 = intervalosEncontrados(i);
    x1 = intervalosEncontrados(i+1);
    #   o plot dos pontos encontrados e apenas em flag == 1, ou seja, estou mostrando no gr�fico
    # as raizes encontradas pelo m�todo da bissec��o com o scatter.
    if(flag == 1)
        #adicionando as raizes encontras em r
        r(end+1,:) = Bisseccao(x0,x1,fun,epsilon,iteracoes);
        scatter(r(k),0,'+',"linewidth",3);
        k+=1;
    elseif(flag ==2)
        #adicionando as raizes encontras em r
        r(end+1,:) = PosicaoFalsa(x0,x1,fun,epsilon,iteracoes);
    elseif(flag == 3)
        #adicionando as raizes encontras em r
        r(end+1,:) = PosicaoFalsaModificada(x0,x1,fun,epsilon,iteracoes);
    elseif(flag == 4)
        r(end+1,:) = newton_metodo(fun,(x0+x1)/2,epsilon,iteracoes);#(fun,valor_inicial,tolerancia,iter) 
    else
        r(end+1,:) = secante_metodo(fun,x0,x1,epsilon,iteracoes);
    endif
    i+=2;#troca de intervalo
  endwhile
  raizes = r;
 endfunction
  