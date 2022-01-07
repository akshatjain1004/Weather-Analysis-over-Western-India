sgn=[];
count=1;
for j=101:119
    for k= j+1:120
        if ACTUALmm(k)-ACTUALmm(j)>0
            sgn(count)=1;
        else if ACTUALmm(k)-ACTUALmm(j)<0
                sgn(count)=-1;
            else
                sgn(count)=0;
            end
        end
        count= count+1;
    end
end
S=0;
for k=1:count-1
    S= S+ sgn(k);
end
disp(S);
num=0;
tip=[];
for i=1:120
    sum=0;
    for j=i:120
      if ACTUALmm(i)==ACTUALmm(j)
          sum= sum+1;
      end
    end
    if sum~=1
        num= num+1;
        tip(num)=sum;
    end
end
disp(num)
var= 20*19*45/18;
disp(sqrt(var));
Zmk= (S-1)/sqrt(var);
disp(Zmk);