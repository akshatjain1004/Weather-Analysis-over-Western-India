plot(year, west-arabian);
xlabel('Year');
ylabel('Temperature difference')
dif=[];
for i=1:40
    dif(i)= decWest(i)- decArabian(i);
end
plot(year(1:40),dif);
xlabel('Year');
ylabel('Decadal average of Temperature difference')