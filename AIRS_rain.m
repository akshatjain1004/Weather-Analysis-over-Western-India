rf1= ncread('AIRS_rain.nc','GPCPMON_3_1_satellite_precip');
rfAnnual1=[];
for i=1:35
    sum=0;
    for j=1:7
        if j==2
            sum= sum+ rf1((i-1)*12+j)*28;
        elseif mod(j,2)==0
            sum= sum+ rf1((i-1)*12+j)*30;
        else
            sum= sum+ rf1((i-1)*12+j)*31;
        end
    end
     for j=8:12
         if mod(j,2)==0
            sum= sum+ rf1((i-1)*12+j)*31;
         else
            sum= sum+ rf1((i-1)*12+j)*30;
         end
     end
        rfAnnual1(i)=sum;
end
plot(Dates(86:120),rfAnnual1(1:35),Dates(86:120),ACTUALmm(86:120));
ylabel('Rainfall in mm');
xlabel('Year');
r= corrcoef(rfAnnual1(1:35),ACTUALmm(86:120));
disp(r);