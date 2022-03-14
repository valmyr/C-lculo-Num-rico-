#[a,b] - intervalo
# fun  - fun��o onde vamos aplicar o m�todo
#epson - toler�ncia
#itera��es - quantidade de repeti��es do c�lculo
function raiz = PosicaoFalsa(a,b,fun,epson,iteracoes)
    ya = fun(a);
    yb = fun(b);
    posicaoFalsa = (-ya*b + a*yb)/(yb-ya);%condi��o para que a fun��o de primeiro grau e zero
    yp = fun(posicaoFalsa);#f da posi��o falsa 
    i=0;#contador de itera��es
    while(i <= iteracoes || yp > epson)%condi��es de parada
      # Teorema se f(Posi��o Falsa) * f(a) < 0, ent�o o a ra�z esta entre 'a' e 'media'.
      # Logo, atualizarei o valor 'b' passa a ser o valor de 'PosicaoFalsa'
      if(yp*ya < 0)
          b = posicaoFalsa;
      endif
      # Teorema se f(Posi��o Falsa) * f(b) < 0, ent�o o a ra�z esta entre 'media' e 'b'.
      # Logo, atualizarei o valor 'a' passa a ser o valor de 'PosicaoFalsa'
      if(yp*yb < 0)
          a = posicaoFalsa;
      endif
      i++;#pos incremento de i
      #recalculando a posi��o falsa
      posicaoFalsa = (-ya*b + a*yb)/(yb-ya);
      ya = fun(a);
      yb = fun(b);
      #calculando f de posicaoFalsa
      yp = fun(posicaoFalsa); 
    endwhile
    #return
    raiz = posicaoFalsa;
  endfunction