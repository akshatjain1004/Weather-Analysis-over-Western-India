S= std(rainfall_months);
M= mean(rainfall_months);
STIp2=[];
for i= 1:120
    STIp2(i)= (rainfall_months(i)-M)/S ;
end
STIdecadal2=[];
for i=1:12
    for j=1:10
        STIdecadal2(10*(i-1)+j)= mean(STIp2(1+(i-1)*10:i*10));
    end
end
plot(Dates,STIdecadal2);