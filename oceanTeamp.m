ocean= [];
year=[];
for i=1:41
    sum=0;
    for j= 1:12
        sum= sum+ tempOcean((i-1)*12+ j);
    end
    ocean(i)= (sum/12 -273);
    year(i)= 1979+i;
end
plot(year,ocean);
xlabel('Year');
ylabel('Temperature in degree Celcius (MERRA-2)');
decOcean=[];
for i=1:4
    sum=0;
    for j=1:10
       sum= sum+ ocean((i-1)*10 +j)/10; 
    end
    for j=1:10
        decOcean((i-1)*10+j)= sum;
    end
end
plot(year(1:40),decOcean);
xlabel('Year');
ylabel('Decadal average of Temperature in degree Celcius (MERRA-2)');