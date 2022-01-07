rf= ncread('merra2Rainfall.nc','M2TMNXFLX_5_12_4_PRECTOT');
rfAnnual=[];
for i=1:41
    sum=0;
    for j=1:7
        if j==2
            sum= sum+ rf((i-1)*12+j)*28;
        elseif mod(j,2)==0
            sum= sum+ rf((i-1)*12+j)*30;
        else
            sum= sum+ rf((i-1)*12+j)*31;
        end
    end
     for j=8:12
         if mod(j,2)==0
            sum= sum+ rf((i-1)*12+j)*31;
         else
            sum= sum+ rf((i-1)*12+j)*30;
         end
     end
        rfAnnual(i)=sum;
end

scatter(rfAnnual,Dates(80:120),ACTUALmm(80:120));
ylabel('WRIS Data');
xlabel('MERRA-2');
R= corrcoef(rfAnnual,ACTUALmm(80:120));
disp(R);
            