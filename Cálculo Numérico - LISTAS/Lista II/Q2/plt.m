#plot dos gr�ficos
function plt(t,f,xxyy,cor)
  plot(t,f,cor,"linewidth",1.2); 
  axis(xxyy);
  hold on;
  grid minor;
endfunction
