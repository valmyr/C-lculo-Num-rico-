#[a,b] - intervalo
# fun  - função onde vamos aplicar o método
#epsilon - tolerância
#iterações - quantidade de repetições do cálculo
function raiz = PosicaoFalsaModificada(a,b,fun,epsilon,iteracoes)
    posicaoFalsa0 = a;
    ya = fun(a);#f(a)
    yb = fun(b);#f(b)
    posicaoFalsa1 = (-ya*b + a*yb)/(yb-ya);%local onde a função de primeiro grau e zero
    yp = fun(posicaoFalsa1); #f de posição falsa
    i=0;#contador de iterações
    while(abs(b-a) > epsilon ||  abs(yp) > epsilon)%condições de parada
      # Teorema se f(Posição Falsa) * f(a) < 0, então o a raíz esta entre 'a' e 'Posição Falsa'.
      if(yp*ya < 0)
          #caso fun(posicaoFalsa0)*fun(posicaoFalsa1) > 0.
          if(fun(posicaoFalsa0)*fun(posicaoFalsa1) > 0)
            #Então dividimos o valor de ya ou f(a) por 2
            ya/=2;
          else
            # Logo, atualizarei o valor 'b' passa a ser o valor de 'PosicaoFalsa'
             b = posicaoFalsa1;
             yb = fun(b);
          endif
      endif
      # Teorema se f(Posição Falsa) * f(b) < 0, então o a raíz esta entre 'Posição Falsa' e 'b'.
      if(yp*yb<0)
          #caso fun(posicaoFalsa0)*fun(posicaoFalsa1) > 0.
          if(fun(posicaoFalsa0)*fun(posicaoFalsa1) > 0)
            #Então dividimos o valor de yb ou f(b) por 2
            yb/=2;
          else
            # Logo, atualizarei o valor 'b' passa a ser o valor de 'PosicaoFalsa'
            a = posicaoFalsa1;
            ya = fun(a);
          endif
      endif
      i++;#pós-incremento de i
      posicaoFalsa0 = posicaoFalsa1;#salvando a posição falsa anterior
      posicaoFalsa1 = (-ya*b + a*yb)/(yb-ya);#recalculando a posição falsa
      yp=fun(posicaoFalsa1);#recalculando o valor de f(Posição falsa)
    endwhile
    fprintf("Números de iterações do método da falsa posição modificada [%d]\n",i);
    #return
    raiz = posicaoFalsa1;
  endfunction