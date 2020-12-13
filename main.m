x = [0 1 2 3 4];
y = [1100 1080 1040 960 840];
%
a0 = 1097.7143;
a1 =    4.5714;
a2 =  -17.1429;
sol = [a0 a1 a2]';
tol = 1.e-4;
%
[coef] = trabalho2_mmq(x,y)
%
res = norm(sol - coef);
if res < tol
    erro = 0
  else
    erro = 1
endif