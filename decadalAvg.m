rain_decadal_mean=[];
for i=1:12
    sum=0;
    for j=1:10
        sum= sum+ ACTUALmm((i-1)*10+j);
    end
    sum= sum/10;
    for j=1:10
        rain_decadal_mean((i-1)*10 +j)= sum;
    end
end
plot(Dates,rain_decadal_mean);
    