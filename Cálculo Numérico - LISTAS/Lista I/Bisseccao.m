#[a,b] intervalo
# fun fun??o onde vamos aplicar o m?todo
#epson toler?ncia
#itera??es quantidade de repeti??es do c?lculo
function raiz = Bisseccao(a,b,fun,epson,iteracoes)
    media = (a+b)/2;#M?dia inicial 
    ym = fun(media);#f de M?dia inicial 
    ya = fun(a);#f(a)
    yb = fun(b);#f(b)
    i = 0;#contador de itera??es
    #condi??es de parada
    while((i <= iteracoes) || abs(ym) > epson)
      media = (a+b)/2;
      ym = fun(media); 
      ya = fun(a);
      yb = fun(b);
      # Teorema se f(m) * f(a) < 0, ent?o o a ra?z esta entre 'a' e 'media'.
      # Logo, atualizarei o valor 'b' passa a ser o valor de 'm?dia'
      if(ym*ya < 0)
          b = media;
      endif
      #Teorema se f(m) * f(b) < 0, ent?o o a ra?z esta entre 'media' e 'b'
      #Logo, atualizarei o valor 'a' passa a ser o valor de 'media'
      if(ym*yb < 0)
          a = media;
      endif
      i++;#p?s-incremento do i
    endwhile
    #return
    raiz = media;
  endfunction