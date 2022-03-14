#[a,b] intervalo
# fun função onde vamos aplicar o método
#epsilon tolerância
#iterações quantidade de repetições do cálculo
function raiz = Bisseccao(a,b,fun,epsilon,iteracoes)
    media = (a+b)/2;#Média inicial 
    ym = fun(media);#f de Média inicial 
    ya = fun(a);#f(a)
    yb = fun(b);#f(b)
    i = 1;#contador de iterações
    #condições de parada
    while(abs(b-a) > epsilon|| abs(ym) > epsilon)
      media = (a+b)/2;
      ym = fun(media); 
      ya = fun(a);
      yb = fun(b);
      # Teorema se f(m) * f(a) < 0, então o a raíz esta entre 'a' e 'media'.
      # Logo, atualizarei o valor 'b' passa a ser o valor de 'média'
      if(ym*ya < 0)
          b = media;
      endif
      #Teorema se f(m) * f(b) < 0, então o a raíz esta entre 'media' e 'b'
      #Logo, atualizarei o valor 'a' passa a ser o valor de 'media'
      if(ym*yb < 0)
          a = media;
      endif
      i++;#pós-incremento do i
    endwhile
    fprintf("Números de iterações do método da falsa bissecção [%d]\n",i);
    #return
    raiz = media;
  endfunction