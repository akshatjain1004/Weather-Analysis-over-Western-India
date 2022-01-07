count=0;
for i=1:120
    if STIp(i)<-1.5
        if STIp(i)>-2
            count= count+1;
        end
    end
end
disp(count);
decadal=[];
for i=1:12
    sum=0;
    for j= 1:10
        if STIp(10*(i-1)+j)>0
            if STIp(10*(i-1)+j)>0
                sum= sum+1;
            end
        end
    end
    decadal(i)=sum;
end
plot(decadal);