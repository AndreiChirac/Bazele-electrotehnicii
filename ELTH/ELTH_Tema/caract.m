function  caract()
  
  U = linspace(0,25,100);
  R1 = 2;
  R120 = 0.75;  
  Ee = 8;
 
  for i = 1:100
    if(i == 1)
      I = U(i)/R1;
      Id = (Ee - U(i) )/R120;
    else
      I = [I , U(i)/R1];
      Id = [Id , (Ee - U(i) )/R120];
    endif  
  endfor

  plot(U,I,U,Id);
  
endfunction
