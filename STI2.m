S= std(non_rainfall);
M= mean(non_rainfall);
STIp=[];
for i= 1:120
    STIp(i)= (non_rainfall(i)-M)/S ;
end
plot(Dates, STIp);