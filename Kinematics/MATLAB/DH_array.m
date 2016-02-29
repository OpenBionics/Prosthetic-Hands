function A = DH_array(th, d, alpha, a)

A = [cos(th) -sin(th)*cos(alpha) sin(th)*sin(alpha) a*cos(th);
      sin(th) cos(th)*cos(alpha) -cos(th)*sin(alpha) a*sin(th);
      0 sin(alpha) cos(alpha) d;
      0 0 0 1];