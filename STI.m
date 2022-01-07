S= std(rainfall_months);
M= mean(rainfall_months);
STIp=[];
for i= 1:120
    STIp(i)= (rainfall_months(i)-M)/S ;
end
plot(Dates, STIp);
