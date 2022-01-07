rainfall_months= [];
non_rainfall=[];
for i=1:120
    rainfall_months(i)= julym(i)+ augm(i)+ sepm(i) + junem(i);
end
plot(Dates,rainfall_months);
non_rainfall=[];
for i=1:120
    non_rainfall(i)= ACTUALmm(i)- rainfall_months(i)+100;
end
plot(Dates,non_rainfall);
rainydecadal=[];
for i=1:12
    for j=1:10
        rainydecadal(10*(i-1)+j)= mean(rainfall_months(1+(i-1)*10:i*10));
    end
end
plot(Dates,rainydecadal);
