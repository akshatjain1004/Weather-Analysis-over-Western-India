julym=[];
for i=1:120
    julym(i)= ACTUALmm1(7+12*(i-1));
end
julydecadal=[];
for i=1:12
    for j=1:10
        julydecadal(10*(i-1)+j)= mean(julym(1+(i-1)*10:i*10));
    end
end
plot(julydecadal);