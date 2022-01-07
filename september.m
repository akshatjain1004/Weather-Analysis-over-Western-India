sepm=[];
for i=1:120
    sepm(i)= ACTUALmm1(9+12*(i-1));
end
plot(Dates,sepm);
sepdecadal=[];
for i=1:12
    for j=1:10
        sepdecadal(10*(i-1)+j)= mean(sepm(1+(i-1)*10:i*10));
    end
end
plot(Dates,sepdecadal);