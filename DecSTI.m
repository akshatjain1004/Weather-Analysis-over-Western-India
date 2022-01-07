STIdecadal=[];
for i=1:12
    for j=1:10
        STIdecadal(10*(i-1)+j)= mean(STIp(1+(i-1)*10:i*10));
    end
end
plot(Dates,STIdecadal);
