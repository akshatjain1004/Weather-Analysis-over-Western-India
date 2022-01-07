d3= readmatrix('csvFile497.csv');
rainfall_m= d3(2899:4347)';
june=[];
july=[];
aug=[];
sep=[];
for i=1:120
    june(i)= rainfall_m((i-1)*12+6);
    july(i)= rainfall_m((i-1)*12+7);
    aug(i)=  rainfall_m((i-1)*12+8);
    sep(i)= rainfall_m((i-1)*12+9);
end
seasonal=[];
for i=1:120
    seasonal(i)= june(i)+july(i)+aug(i)+sep(i);
end
non_rainy=[];
for i=1:120
    non_rainy(i)= ACTUALmm(i)- seasonal(i);
end
seasonal_decadal=[];
for i=1:12
    sum=0;
    for j=1:10
        sum= sum+ seasonal((i-1)*10+j);
    end
    sum= sum/10;
    for j=1:10
        seasonal_decadal((i-1)*10 +j)= sum;
    end
end
non_rainy_decadal=[];
for i=1:120
    non_rainy_decadal(i)= rain_decadal_mean(i)- seasonal_decadal(i);
end
yyaxis left
plot(Dates,non_rainy_decadal);
ylabel('Decadal average of rainfall in non-rainy months in mm');
xlabel('year')
yyaxis right
plot(Dates,seasonal_decadal);
ylabel('Decadal avg of rainfall in rainy months');
r= corrcoef(seasonal_decadal, non_rainy_decadal);
disp(r);
        

