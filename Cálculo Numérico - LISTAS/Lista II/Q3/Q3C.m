funQ3C = @(x) 5*cosh(x) - 5*exp(x)-1.7;
t = [-5:0.01:5];
t(abs(funQ3C(t)) > 20) = nan;
hold on
plot([-5 5],[0 0],"-k");
plot([0 0],[-20 20],"-k");
plot(t,funQ3C(t),'DisplayName','f(x) = 5*cosh(x) - 5*exp(x)-1.7;');
legend
xlabel("X");
ylabel("Y");
axis([-5 5 -20 20]);
raiz =fzero(funQ3C,0);
fprintf("raiz = %.4f\n",raiz);
