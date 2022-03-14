function raiz = secante_metodo(fun,iter)
  fprintf("Programa para calcular uma raiz de uma equação não linear\n");
  fprintf("Método da Secante\n");
  tolerancia = input("Informe a tolerância>>");
  fprintf("Informe o intervalor\n");
  a = input("a>>");
  b = input("b>>");

  proximaIteracao = @(a,b) b - fun(b)*((b-a)/(fun(b)-fun(a)));
  xn = proximaIteracao(a,b);
  xn_1 = proximaIteracao(b,xn);
  i = 1;
  %Cáculo das próximas aproximações
  while(abs(xn_1-xn) > tolerancia || abs(fun(xn_1) - fun(xn)) > tolerancia || i > iter)
    temp = proximaIteracao(xn,xn_1);
    xn = xn_1;
    xn_1 = temp;
    i++;
  endwhile
  raiz = xn_1;
endfunction