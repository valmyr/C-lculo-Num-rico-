function raiz = secante_metodo(fun,iter)
  fprintf("Programa para calcular uma raiz de uma equa��o n�o linear\n");
  fprintf("M�todo da Secante\n");
  tolerancia = input("Informe a toler�ncia>>");
  fprintf("Informe o intervalor\n");
  a = input("a>>");
  b = input("b>>");

  proximaIteracao = @(a,b) b - fun(b)*((b-a)/(fun(b)-fun(a)));
  xn = proximaIteracao(a,b);
  xn_1 = proximaIteracao(b,xn);
  i = 1;
  %C�culo das pr�ximas aproxima��es
  while(abs(xn_1-xn) > tolerancia || abs(fun(xn_1) - fun(xn)) > tolerancia || i > iter)
    temp = proximaIteracao(xn,xn_1);
    xn = xn_1;
    xn_1 = temp;
    i++;
  endwhile
  raiz = xn_1;
endfunction