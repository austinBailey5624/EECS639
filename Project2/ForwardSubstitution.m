function answersLookup = ForwardSubstitution(data)

dims = size(data,1);%return size n of a matrix

answersLookup = zeros(dims,1);

answersLookup(1) = data(1,dims);% return the n,nth value of a matrix
disp(answersLookup);

for i=(2):1:(dims)
    accum = 0;
    al = 1;
    for j=dims:-1:i%solving for numerator of generalized expression
        accum = accum + data(i,j)*answersLookup(al);
        disp(accum);
        al = al + 1;
    end
    answersLookup(i)=accum*(-1)/data(i,dims-i+1);
    disp(answersLookup);
end
        