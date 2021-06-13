function Grafic(Re,Ee,U120)
  
  R = linspace(0,10,100);
  
  for i = 1 : 100
    
    if( i == 1 )
      U(i) = Ee - Ee/(Re + R(1,i));
      I(i) = U120 / ( R(1,i) + Re );  
      P(i) = U(i)*I(i);
    else
      U =[ U , (Ee - Ee/(Re + R(1,i)))];
      I =[ I , U120 / ( R(1,i) + Re )] ;
      P =[ P , U(i)*I(i)];
    endif  
      
  endfor
  
  plot(R,U,R,I,R,P)
  
endfunction
