st= ncread('g4.areaAvgTimeSeries.M2TMNXLND_5_12_4_TSOIL1.19800101-20201231.75E_26N_75E_26N.nc','M2TMNXLND_5_12_4_TSOIL1');
stJuly= [];
for i=1:39
    stJuly(i)= st((i-1)*12 +7);
end
stJune=[];
for i=1:39
    stJune(i)= st((i-1)*12 +6);
end
stAug=[];
for i=1:39
    stAug(i)= st((i-1)*12 +8);
end
stAnnual=[];
for i=1:39
    sum=0;
    for j=1:12
        sum= sum+ st((i-1)*12+j);
    end
    sum= sum/12;
    stAnnual(i)= sum;
end
plot(Dates(82:120),stAnnual);
yyaxis left
plot(Dates(82:120),ACTUALmm(82:120));
ylabel('Annual rainfall rainfall in mm');
xlabel('year')
yyaxis right
plot(Dates(82:120),stAnnual);
ylabel('Soil Temperature in K');

scatter(stAnnual,ACTUALmm(82:120));

