funQ3B = @(x) 5*cos(x)-2*exp(3*x);
t = [-5:0.01:5];
t(abs(funQ3B(t)) > 30) = nan;
hold on
plot([-5 5],[0 0],"-k");
plot([0 0],[-30 30],"-k");
plot(t,funQ3B(t),'DisplayName','f(x) = 5*cos(x)-2*exp(3*x)');
legend
xlabel("X");
ylabel("Y");
raiz =fzero(funQ3B,0);
fprintf("\n\nraiz = %.4f\n\n",raiz);
axis([-5 5 -30 30]);
