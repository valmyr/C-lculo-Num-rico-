function raiz = newton_metodo(fun,valor_inicial,tolerancia,iter) 
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
  fprintf("Números de iterações do método de newton [%d]\n",i);
  raiz = xn_1;
endfunction