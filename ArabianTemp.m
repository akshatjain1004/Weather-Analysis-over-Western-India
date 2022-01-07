arabian= [];
year=[];
for i=1:41
    sum=0;
    for j= 1:12
        sum= sum+ tempArabian((i-1)*12+ j);
    end
    arabian(i)= (sum/12 -273);
    year(i)= 1979+i;
end
plot(year,arabian);
xlabel('Year');
ylabel('Temperature in degree Celcius (MERRA-2)');
decArabian=[];
for i=1:4
    sum=0;
    for j=1:10
       sum= sum+ arabian((i-1)*10 +j)/10; 
    end
    for j=1:10
        decArabian((i-1)*10+j)= sum;
    end
end
plot(year(1:40),decArabian);
xlabel('Year');
ylabel('Decadal average of Temperature in degree Celcius (MERRA-2)');