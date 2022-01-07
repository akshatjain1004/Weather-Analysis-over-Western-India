non_rainydecadal=[];
for i=1:12
    for j=1:10
        non_rainydecadal(10*(i-1)+j)= mean(non_rainfall(1+(i-1)*10:i*10));
    end
end
plot(Dates,non_rainydecadal);