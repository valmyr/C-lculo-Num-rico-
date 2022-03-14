funQ3A = @(x) 2*exp(1./x)-(5*sin(x));
t = [-5:0.01:5];
t(abs(funQ3A(t)) > 20) = nan;
hold on
plot([-5 5],[0 0],"-k");
plot([0 0],[-20 20],"-k");
plot(t,funQ3A(t),'DisplayName','f(x) = 2*exp(1./x)-(5*sin(x))');
legend
xlabel("X");
ylabel("Y");
axis([-5 5 -20 20]);
raiz =fzero(funQ3A,0);
fprintf("\n\nraiz = %.4f\n\n",raiz);
