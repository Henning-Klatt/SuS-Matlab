function Flag = hurwitz(Q)
q = length(Q)-1;
Flag = 1;
% Test 1
if ~all(Q>0)
    Flag = 0;
    return
end
% Test 2
M = Q;
for mu = 1:q
    if det(M(:,q:q+mu-1))<=0
        Flag = 0;
        return;
    end;
    M = [M zeros(mu,2); zeros(1,2*mu) Q];
end;