function X = Jacobi(tol,A,B)
  %Phi(x) = D - C*x
  %valor inicial x0 = 0
  xn = zeros(size(A)(2),1);
  #Obtendo a matriz D
  D = B;
  %Obtendo a matriz C
  C = zeros(size(A)(2));
  tk = zeros(size(A)(2));
  diagonal = diag(A)
  for i = 1 : size(A)(2)
    for j = 1: size(A)(2)
      if(i != j)
        C(i,j) = A(i,:)(j);
      endif
    endfor
  endfor
  for i  = 1 : size(C)(2)
    C(i,:) /= diagonal(i);
    D(i,:) /= diagonal(i);
  endfor
  C = -C;
  D;
  %Aplicação do método de jacobi para resolução de sistemas lineares
  xn_mais_um = calculando_a_proxima_iteracao(C,xn,D);
  xd_barra = distancias(xn,xn_mais_um);
  xn = xn_mais_um;
 fprintf("\n%.3f %.3f %.3f %.3f %.3f\n",xn(1),xn(2),xn(3),xd_barra)
 i = 0;
  while(xd_barra > tol)
    fprintf("\n%.3f %.3f %.3f %.3f %.3f\n",xn(1),xn(2),xn(3),xd_barra)
    xn_mais_um = calculando_a_proxima_iteracao(C,xn,D);
    xd_barra = distancias(xn,xn_mais_um);
    xn =xn_mais_um;
  endwhile
  fprintf("\n%.3f %.3f %.3f %.3f %.3f\n",xn(1),xn(2),xn(3),xd_barra)
  X = xn_mais_um;
endfunction

function xn_mais_um = calculando_a_proxima_iteracao(C,xn,D)
  xn_mais_um = (C*xn)+D;
endfunction
function xd_barra = distancias(xn,xn_mais_um)
  s = abs(xn_mais_um - xn);
  xd = max(s);
  k =abs(xn_mais_um);
  xd_barra = xd/max(k);
endfunction
