plot(year, west-ocean);
xlabel('Year');
ylabel('Temperature difference')
dif2=[];
for i=1:40
    dif2(i)= decWest(i)- decOcean(i);
end
plot(year(1:40),dif2);
xlabel('Year');
ylabel('Decadal average of Temperature difference')