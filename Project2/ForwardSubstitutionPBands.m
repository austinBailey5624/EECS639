function answers = ForwardSubstitutionPBands( data, p )

dims = size(data, 1); %size n of the matrix

answers = zeros( dims, 1);

answers(1) = data(1, 1); %this is the first x_n of our matrix


for i=2:1:dims
    accum = 0;
    if (i-p)<=0
        for j=1:1:i    
            accum = accum + data(i, j)*answers(j);
        end
    end
    if (i-p) > 0
        for j=i-p:1:dims
           accum = accum + data(i, j)*answers(j);
        end
    end
    answers(i)=accum*(-1)/data(i,i);
    disp(answers);
end

