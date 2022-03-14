A = [80,-20,017,11;-17,77,7,14;10,18,68,-6;0,10,-25,56]
B = [35;40;30;33]
%Gauss
x = A \ B
%Gauss-Jordan
x = inv(A) * B
%Decomposição L.U.
{L,U] = lu(A)
y = L \ B
x = U \ y
