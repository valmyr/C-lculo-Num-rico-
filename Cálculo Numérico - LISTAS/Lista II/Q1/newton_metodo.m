function raiz = newton_metodo(fun,iter) 
  fprintf("Programa para calcular uma raiz de uma equa��o n�o linear\n");
  fprintf("M�todod de Newton\n");
  tolerancia = input("Informe a toler�ncia>>");
  valor_inicial = input("Informe o valor in�cial>>");
  %derivada
  f_= @(x) deriv(fun,x);
  proximaIteracao = @(x) x - fun(x)/f_(x);
  xn = proximaIteracao(valor_inicial);
  xn_1 = proximaIteracao(xn);
  i = 1;
  %C�culo das pr�ximas aproxima��es
  while(abs(xn_1-xn) > tolerancia || abs(fun(xn_1) - fun(xn)) > tolerancia || i > iter)
    xn = xn_1;
    xn_1 = proximaIteracao(xn);
    i++;
  endwhile
  raiz = xn_1;
endfunction