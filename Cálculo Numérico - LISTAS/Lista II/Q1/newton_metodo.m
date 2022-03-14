function raiz = newton_metodo(fun,iter) 
  fprintf("Programa para calcular uma raiz de uma equação não linear\n");
  fprintf("Métodod de Newton\n");
  tolerancia = input("Informe a tolerância>>");
  valor_inicial = input("Informe o valor inícial>>");
  %derivada
  f_= @(x) deriv(fun,x);
  proximaIteracao = @(x) x - fun(x)/f_(x);
  xn = proximaIteracao(valor_inicial);
  xn_1 = proximaIteracao(xn);
  i = 1;
  %Cáculo das próximas aproximações
  while(abs(xn_1-xn) > tolerancia || abs(fun(xn_1) - fun(xn)) > tolerancia || i > iter)
    xn = xn_1;
    xn_1 = proximaIteracao(xn);
    i++;
  endwhile
  raiz = xn_1;
endfunction