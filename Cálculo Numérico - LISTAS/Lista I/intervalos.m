#______CÓDIGO PARA ENCONTRAR OS intervaloS ONDE A RAIZ E UNÍCA________
function inter =  intervalos(fun,a,b)
  temp = a;
  intervalosEncontardos = [];
  while(a <= b)
   #percorrendo o intervalo com o incremento de 0.2. Ao aumentar, podemos elevar o tamanho da partição do intervalo
   a+=0.2;
   k = 0;
   j = 0;                                                              
   if(((fun(a) < 0 && fun(temp) > 0) || fun(a) > 0 && fun(temp) < 0 ));
      #verificando se há exatamente uma raiz no intervalo
      x = [a:0.1:temp];
      t = deriv(fun,x);
      #verificando se a sinal da derivada de f e constante no intervalo em que pode ter pelo menos uma raiz
      for i =1:size(t)(2)
        if(t(i)<0)
           j+=1;
        elseif(t(i) >0)
           k+=1;
        endif
        #se ambos forem maior que 1 então o sinal da derivada muda
        if(k > 1 && j > 1)
          break
        endif
      endfor
      #Adicionando os intervalos em que existe exatamente uma  uníca raiz
      #caso j ou k forem iguais ao tamanho das colunas de t, ou seja, da derivada.Então o sinal e constate
      #e o valo do intervalo e adicionado em intervalosEncontardos
      if((size(t)(2) == j || size(t)(2) == k))
         intervalosEncontardos(end+1,:) = temp;
         intervalosEncontardos(end+1,:) = a;        
      endif
   endif
   #atualização da variável temp
   temp = a;
   #reiniciando a contagem
   k = 0;
   j = 0;
  endwhile
  #retirando indefinições as assíntotas
  intervalosEncontardos( fun(intervalosEncontardos) > 4) =nan;
  #return
  inter =intervalosEncontardos;
 endfunction
