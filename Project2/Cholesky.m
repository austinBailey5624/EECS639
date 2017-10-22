function result = Cholesky(data)

dims = size(data,1);

result = zeros(dims,dims);

if dims==1
    result(1,1)=sqrt(data(1,1));
    return;
end

%for i=1:dims
%    summation=0;
%    for j=1:i
%        summation = summation + result( 
%    result(i,i)=

for i=1:dims
    for j=1:dims
        summation=0;
        if(i<j)
            result(i,j)=0;
        end
        if(j==i)
            for k=1:(j-1)
                summation = summation + (result(j,k)*result(j,k));
            end
            result(i,j) = sqrt(data(i,j)-summation);
        end
        if(i>j)
            for k=1:(j-1)
                summation = summation + result(i,k)*result(j,k); 
            end
            result(i,j) = (1/result(j,j))*(data(i,j)-summation);
        end
    end
end

result = result*transpose(result);


            
        