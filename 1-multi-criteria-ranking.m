cla
grid on
hold on
x=0:45
y1=30-0.5*x
y2=15-2*x
i=1
MIN=string(MIN)
Pa=string(Pa)
while i<=50
    f01=45*rand()
    f02=30*rand()
    if f02<=30-0.5*f01
        if f02>=15-2*f01
            f1(i)=f01
            f2(i)=f02
            i=i+1
        end
    end
end
plot(x,y1,x,y2)
i=1
while i<=50
    bk(i)=-1
    j=1
    while j<=50
        if f1(j)<=f1(i)
            if f2(j)<=f2(i)
                bk(i)=bk(i)+1
            end
        end
        j=j+1
    end
    i=i+1
end
i=1
while i<=50
    Ph(i)=1/(1+(bk(i)/49))
    i=i+1
end
xlim([0 45])
ylim([0 30])
for i=1:50
    Pa(i)=("No")
    if Ph(i)==1
        Pa(i)=("Yes")
    end
    K1(i)=abs(1-Ph(i))
    K2(i)=abs(0.85-Ph(i))
    K3(i)=abs(0.7-Ph(i))
    if (K1(i) < K2(i))
        if (K1(i) < K3(i))
            MIN(i) = "K1"
            plot(f1(i),f2(i),'.-g')
        end
    end
    if (K2(i) < K1(i))
        if (K2(i) < K3(i))
            MIN(i) = "K2"
            plot(f1(i),f2(i),'.-b')
        end
    end
    if (K3(i) < K2(i))
        if (K3(i) < K1(i))
            MIN(i) = "K3"
            plot(f1(i),f2(i),'.-r')
        end
    end
    
    
end
fprintf('–ù–æ–º–µ—Ä\t\tF1\tF2\tBk\t\t–§\t–ü–∞—Ä–µ—Ç–æ\t\tK1\tK2\tK3\tmin\n');
for i=1:50
 fprintf('%i\t\t%.2f\t%.2f\t%i\t\t%.2f\t%s\t\t%.2f\t%.2f\t%.2f\t%s\t\n',i,f1(i),f2(i),bk(i), Ph(i), Pa(i), K1(i),K2(i),K3(i),MIN(i));
 end
