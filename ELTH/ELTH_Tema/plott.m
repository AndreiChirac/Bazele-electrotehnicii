function plott(x,y)

  scatter(x,y);
  p = polyfit(x,y,1);
  z = polyval(p,x);
  plot(x,z);
  xlabel( "m[g]" );
  ylabel( "T[s]" );
  hold on
 
  plot(x(1,:),y(1,:),'r*');
  plot(4.7161,0.93729,'b*');
  plot(6.5372,1.297,'b*');
  

  
  
  
endfunction
