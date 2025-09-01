function dx = sismasa(t, x, zfun)
    m1 = 290;
    b1 = 1000;
    m2 = 59;
    k1 = 16182;
    f = 0;
    k2 = 19000;
    

    z = zfun(t); 
    
  
    x1 = x(1);      
    x1p = x(2);     
    x2 = x(3);      
    x2p = x(4);    
    
   
    x1pp = (1/m1) * (-b1*x1p + b1*x2p - k1*x1 + k1*x2 + f);
    x2pp = (1/m2) * (b1*x1p - b1*x2p + k1*x1 - (k1+k2)*x2 - f + k2*z);
    
   
    dx = zeros(4, 1);
    dx(1) = x1p;    
    dx(2) = x1pp;  
    dx(3) = x2p;    
    dx(4) = x2pp;   
end