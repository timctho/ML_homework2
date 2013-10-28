function ThetaCandidate = Candidate17( Data )

UniqueData = unique(Data(:,1));
bound = length(UniqueData) + 1;
ThetaCandidate = ones(1,bound);
ThetaCandidate(1,1) = (-1 + UniqueData(1))/2;
ThetaCandidate(1,bound) = (1 + UniqueData(bound-1))/2;
for i=2:bound-1
    ThetaCandidate(1,i) = (UniqueData(i-1)+UniqueData(i))/2;
end


end

