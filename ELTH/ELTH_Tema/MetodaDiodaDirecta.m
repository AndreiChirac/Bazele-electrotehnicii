function MetodaDiodaDirecta(Ee,Rab)
  
  R = linspace(0,100,100);
  
  for i = 1 : 100
    
    I1(i) = Ee / ( R(i) + Rab );
    U1(i) = I1(i) * R(i);
  
  endfor
  
  U = -20 : 0.1 : 20;
  I =  10^(-12) * ( exp( U / 0.026 ) - 1 );
  
  plot( U1 , I1 );
  hold on 
  plot( U , I );
  
  ylim([-0 20]);
  xlim([-0 10]);
  
endfunction