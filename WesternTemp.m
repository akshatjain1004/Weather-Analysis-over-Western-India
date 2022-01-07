west= [];
year=[];
for i=1:41
    sum=0;
    for j= 1:12
        sum= sum+ tempWest((i-1)*12+ j);
    end
    west(i)= (sum/12 -273);
    year(i)= 1979+i;
end
plot(year,west);
xlabel('Year');
ylabel('Temperature in degree Celcius (MERRA-2)');
decWest=[];
for i=1:4
    sum=0;
    for j=1:10
       sum= sum+ west((i-1)*10 +j)/10; 
    end
    for j=1:10
        decWest((i-1)*10+j)= sum;
    end
end
plot(year(1:40),decWest);
xlabel('Year');
ylabel('Decadal average of Temperature in degree Celcius (MERRA-2)');

        
        
    