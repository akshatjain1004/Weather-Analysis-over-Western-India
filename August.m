augm=[];
for i=1:120
    augm(i)= ACTUALmm1(8+12*(i-1));
end
plot(Dates,augm);
augdecadal=[];
for i=1:12
    for j=1:10
        augdecadal(10*(i-1)+j)= mean(augm(1+(i-1)*10:i*10));
    end
end
plot(Dates,augdecadal);