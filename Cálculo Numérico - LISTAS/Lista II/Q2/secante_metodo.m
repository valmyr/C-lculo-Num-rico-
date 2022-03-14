function raiz = secante_metodo(fun,a,b,tolerancia,iter)
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
  fprintf("Números de iterações do método das secantes [%d]\n",i);
  raiz = xn_1;
endfunction