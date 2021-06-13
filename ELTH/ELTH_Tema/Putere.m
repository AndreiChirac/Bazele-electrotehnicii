function Putere(R120,U120)
  
  R = linspace(0,10,100);
  
  for i = 1:100
    
    if( i == 1 )
    
      I = U120 / (R(i) + R120);
      U = I(i) * R(i);
      P = U(i) * I(i);
    
    else
      
      I = [ I , U120 / (R(i) + R120) ];
      U = [ U , I(i) * R(i) ];
      P = [ P , U(i) * I(i) ];
    
    endif
  
  endfor 
 
  Pmax = max(P); 
  idx = find(P == Pmax);  
 
  y = P(idx);
  x = R(idx);
 
  figure(1);
  plot(R,P,"r"); 
  hold on
  plot(x,y,'k*');
  plot(0,P(1),'mx');
  title ("Putere");
  
  
  figure(2);
  plot(R,U,"g");
  title ("Tensiune");
 
  figure(3);
  plot(R,I,"b");
  title ("Intensitate");
  
  figure(4);
  plot(R,P,"r",R,U,"g",R,I,"b");
  hold on
  plot(x,y,'k*');
  plot(0,P(1),'mx');
  title ("Grafic");
  
endfunction