d2= readmatrix('amCharts.csv');
normal_comp= rain_decadal_mean(71:110);
actual_comp= ACTUALmm(71:110);
year= Dates(71:110);
RajasthanJaipur= d2(58:97)';
decadal_irrigated=[];
for i=1:4
    sum=0;
    for j=1:10
        sum= sum+ RajasthanJaipur((i-1)*10+j);
    end
    sum= sum/10;
    for j=1:10
        decadal_irrigated((i-1)*10 +j)= sum;
    end
end
yyaxis left
plot(year,normal_comp);
ylabel('Decadal average of rainfall in mm');
xlabel('year')
yyaxis right
plot(year,decadal_irrigated);
ylabel('Decadal avg of irrigated land in 100 ha');
r= corrcoef(decadal_irrigated, normal_comp);
disp(r);
