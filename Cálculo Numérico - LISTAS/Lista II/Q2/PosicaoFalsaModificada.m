#[a,b] - intervalo
# fun  - fun��o onde vamos aplicar o m�todo
#epsilon - toler�ncia
#itera��es - quantidade de repeti��es do c�lculo
function raiz = PosicaoFalsaModificada(a,b,fun,epsilon,iteracoes)
    posicaoFalsa0 = a;
    ya = fun(a);#f(a)
    yb = fun(b);#f(b)
    posicaoFalsa1 = (-ya*b + a*yb)/(yb-ya);%local onde a fun��o de primeiro grau e zero
    yp = fun(posicaoFalsa1); #f de posi��o falsa
    i=0;#contador de itera��es
    while(abs(b-a) > epsilon ||  abs(yp) > epsilon)%condi��es de parada
      # Teorema se f(Posi��o Falsa) * f(a) < 0, ent�o o a ra�z esta entre 'a' e 'Posi��o Falsa'.
      if(yp*ya < 0)
          #caso fun(posicaoFalsa0)*fun(posicaoFalsa1) > 0.
          if(fun(posicaoFalsa0)*fun(posicaoFalsa1) > 0)
            #Ent�o dividimos o valor de ya ou f(a) por 2
            ya/=2;
          else
            # Logo, atualizarei o valor 'b' passa a ser o valor de 'PosicaoFalsa'
             b = posicaoFalsa1;
             yb = fun(b);
          endif
      endif
      # Teorema se f(Posi��o Falsa) * f(b) < 0, ent�o o a ra�z esta entre 'Posi��o Falsa' e 'b'.
      if(yp*yb<0)
          #caso fun(posicaoFalsa0)*fun(posicaoFalsa1) > 0.
          if(fun(posicaoFalsa0)*fun(posicaoFalsa1) > 0)
            #Ent�o dividimos o valor de yb ou f(b) por 2
            yb/=2;
          else
            # Logo, atualizarei o valor 'b' passa a ser o valor de 'PosicaoFalsa'
            a = posicaoFalsa1;
            ya = fun(a);
          endif
      endif
      i++;#p�s-incremento de i
      posicaoFalsa0 = posicaoFalsa1;#salvando a posi��o falsa anterior
      posicaoFalsa1 = (-ya*b + a*yb)/(yb-ya);#recalculando a posi��o falsa
      yp=fun(posicaoFalsa1);#recalculando o valor de f(Posi��o falsa)
    endwhile
    fprintf("N�meros de itera��es do m�todo da falsa posi��o modificada [%d]\n",i);
    #return
    raiz = posicaoFalsa1;
  endfunction