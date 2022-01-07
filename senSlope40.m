Q=[];
count=1;
for i=1:39
    for j=i+1:40
        Q(count)= (ACTUALmm(j)-ACTUALmm(i))/(j-i);
        count=count+1;
    end
end
m= median(Q);
disp(m);
y= median(ACTUALmm(1:40));
disp(y);
disp(y-m*1920); %1900-1940
Q=[];
count=1;
for i=41:79
    for j=i+1:80
        Q(count)= (ACTUALmm(j)-ACTUALmm(i))/(j-i);
        count=count+1;
    end
end
m= median(Q);
disp(m);
y= median(ACTUALmm(41:80));
disp(y);
disp(y-m*1960); %1940-1980
Q=[];
count=1;
for i=81:119
    for j=i+1:120
        Q(count)= (ACTUALmm(j)-ACTUALmm(i))/(j-i);
        count=count+1;
    end
end
m= median(Q);
disp(m);
y= median(ACTUALmm(81:120));
disp(y);
disp(y-m*2000);