function [coef] = trabalho2_mmq(x,y)
n = length(x);
a = zeros(3,3);
b = zeros(3,1);

function [part] = sum_part_x(exp)
part = 0;
    for i = 1 : n
        part += x(1,i)^exp;
    endfor
endfunction

function [part] = sum_part_y(exp)
part = 0;
    for i = 1 : n
        part += y(1,i)^exp;
    endfor
endfunction

a(1,1) = n;
a(1,2) = sum_part_x(1);
a(1,3) = sum_part_x(2);
a(2,1) = a(1,2);
a(2,2) = sum_part_x(2);
a(2,3) = sum_part_x(3);
a(3,1) = a(1,3);
a(3,2) = a(2,3);
a(3,3) = sum_part_x(4);

b(1,1) = sum_part_y(1);
    for i = 1 : n
        b(2,1) += x(1,i) * y(1,i);
        b(3,1) += (x(1,i)^2) * y(1,i);
    endfor

coef = a\b;
endfunction