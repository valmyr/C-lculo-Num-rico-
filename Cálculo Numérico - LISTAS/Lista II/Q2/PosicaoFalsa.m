#[a,b] - intervalo
# fun  - função onde vamos aplicar o método
#epsilon - tolerância
#iterações - quantidade de repetições do cálculo
function raiz = PosicaoFalsa(a,b,fun,epsilon,iteracoes)
    ya = fun(a);
    yb = fun(b);
    posicaoFalsa = (-ya*b + a*yb)/(yb-ya);%condição para que a função de primeiro grau e zero
    yp = fun(posicaoFalsa);#f da posição falsa 
    i=0;#contador de iterações
    while(abs(b-a) > epsilon || abs(yp) > epsilon)%condições de parada
      # Teorema se f(Posição Falsa) * f(a) < 0, então o a raíz esta entre 'a' e 'media'.
      # Logo, atualizarei o valor 'b' passa a ser o valor de 'PosicaoFalsa'
      if(yp*ya < 0)
          b = posicaoFalsa;
      endif
      # Teorema se f(Posição Falsa) * f(b) < 0, então o a raíz esta entre 'media' e 'b'.
      # Logo, atualizarei o valor 'a' passa a ser o valor de 'PosicaoFalsa'
      if(yp*yb < 0)
          a = posicaoFalsa;
      endif
      i++;#pos incremento de i
      #recalculando a posição falsa
      posicaoFalsa = (-ya*b + a*yb)/(yb-ya);
      ya = fun(a);
      yb = fun(b);
      #calculando f de posicaoFalsa
      yp = fun(posicaoFalsa); 
    endwhile
    fprintf("Números de iterações do método da falsa posição [%d]\n",i);
    #return
    raiz = posicaoFalsa;
  endfunction