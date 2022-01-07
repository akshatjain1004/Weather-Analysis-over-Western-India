etAnnual=[];
for i= 1:39
    sum=0;
    for j=1:12
        sum= sum+ et((i-1)*12+j)
    etAnnual(i)= sum;
    end
end
AnnualRain= ACTUALmm(82:120);
plot(Dates(82:120),etAnnual);
yyaxis left
plot(Dates(82:120),AnnualRain);
ylabel('annual rainfall rainfall in mm');
xlabel('year')
yyaxis right
plot(Dates(82:120),etAnnual);
ylabel('Evapotranspiration in');
scatterplot(etAnnual,AnnualRain);