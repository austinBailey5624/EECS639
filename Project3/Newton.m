function color = Newton(z)

answers = zeros(21,1);
answers(1) = z;
for i=2:21
    if(abs(answers(i)-1)<.0001)%checking if root 1 was found
        color = 'y';
        return;
    end
    if(abs(answers(i)+1)<.0001)%checking if root 2 was found
        color = 'r';
        return;
    end
    if(abs(answers(i)-0.4i)<.0001)%checking if root 3 was found
        color = 'b';
        return;
    end
    if(abs(answers(i)+0.4i)<.0001)%checking if root 4 was found
        color = 'g';
        return;
    end
    %preforming newtons method
    answers(i) = answers(i-1) - (((answers(i-1)^2-1)*(answers(i-1)^2+.16))/(4*answers(i-1)^3 - 1.68*answers(i-1)));
    
end




color = 'k';

% f = (z^2-1)(z^2+.16)
% fprime = 4z^3 - 1.68z
% Input:
% z = complex number
%
% Output:
% color = the color associated with the root found by Newton’s Method
% according to the following key:
% color = ’y’, if Newton’s Method found z_1
% ’r’, if Newton’s Method found z_2
% ’b’, if Newton’s Method found z_3
% ’g’, if Newton’s Method found z_4
% ’k’, if Newton’s Method was unsuccessful
% after 20 iterations.
% More precisely, "unsuccessful" means that Matlab cannot reduce
% (z^2-1)(z^2+0.16) to less than 0.0001 (in absolute value) in at most
% 20 Newton iterations.