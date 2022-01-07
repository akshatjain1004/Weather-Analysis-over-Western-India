et= ncread('g4.areaAvgTimeSeries.FLDAS_NOAH01_C_GL_M_001_Evap_tavg.19820101-20210930.75E_26N_75E_26N.nc', 'FLDAS_NOAH01_C_GL_M_001_Evap_tavg');
etAnnual=[];
for i=1:39
    sum=0;
    for j=1:12
        sum= sum+ et((i-1)*12+j);
    end
    sum= sum/12;
    etAnnual(i)= sum;
end

etJune=[];
for i=1:39
    etJune(i)= et((i-1)*12 +6);
end
etJuly= [];
for i=1:39
    etJuly(i)= et((i-1)*12 +7);
end
etAug=[];
for i=1:39
    etAug(i)= et((i-1)*12 +8);
end
etSep=[];
for i=1:39
    etSep(i)= et((i-1)*12 +9);
end
etSeasonal=[];
for i=1:39
    etSeasonal(i)= etJune(i)+etJuly(i)+etAug(i)+etSep(i);
end
etNonRainy=[];
for i=1:39
    etNonRainy(i)= etAnnual(i)- etSeasonal(i);
end
plot(Dates(82:120),etSeasonal);
yyaxis left
plot(Dates(82:120),seasonal(82:120));
ylabel('Annual rainfall in rainy Months WRIS data mm');
xlabel('year')
yyaxis right
plot(Dates(82:120),etSeasonal);
ylabel('Evapotranspiration in rainy months');
r= corrcoef(etSeasonal,seasonal(82:120));
disp(r);
