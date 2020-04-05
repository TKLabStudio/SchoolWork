for a=0:4
for b=1:9
s(a+1,b)=a+b
end
end

s=0;
for a=0:2:100
    s=s+a
end

a=0:7:100

for a=1:100
    if mod(a,2) == 0
        s=s+a*-1;
    else
        s=s+a;
    end
    
    for a=1:100
    if mod(a,2) == 0
        s=s+1/a*-1;
    else
        s=s+1/a;
    end
end