function [m , h] = constanta(x1,y1,x2,y2)
  
  m = ( y2 - y1 ) /[(x2 - x1)*10^(15)];
  h = m*(1.6*10^(-19));

endfunction