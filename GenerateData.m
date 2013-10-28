function Data = GenerateData()

rng('shuffle');
for i=1:20
    Data(i,1) = -1 + 2*rand();
    if(rand()>=0.2)
        Data(i,2) = sign(Data(i,1));
    else
        Data(i,2) = -sign(Data(i,1));
    end
    
    Data = sortrows(Data);

end

