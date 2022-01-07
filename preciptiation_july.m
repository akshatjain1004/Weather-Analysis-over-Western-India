rf= ncread('g4.areaAvgTimeSeries.M2TMNXFLX_5_12_4_PRECTOT.19800101-20201231.75E_26N_75E_26N.nc','M2TMNXFLX_5_12_4_PRECTOT');
rfJuly= [];
for i=1:39
    rfJuly(i)= rf((i-1)*12 +7);
end
plot(Dates(82:120),rfJuly);
yyaxis left
plot(Dates(82:120),julym(82:120)/31);
ylabel('July annual rainfall rainfall per day in mm/day');
xlabel('year')
yyaxis right
plot(Dates(82:120),rfJuly);
ylabel('Model data');