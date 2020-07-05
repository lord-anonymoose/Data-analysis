cla
grid on
hold on
x=0:45;
y1=30-0.5*x;
y2=15-2*x;
i=1;
f1max = 0;
f2max = 0;
while i<=50
    f01=45*rand();
    f02=30*rand();
    if f02<=30-0.5*f01;
        if f02>=15-2*f01
            f1(i)=f01;
            f2(i)=f02;
            i=i+1;
        end
    end
end
plot(x,y1,x,y2)
i=1
f1m=mean(f1)
f2m=mean(f2)
x=1:45
y=1:30
plot([0,45],[f2m,f2m])
plot([f1m,f1m],[0,30])
while i<=50
    if f1(i)>=f1m
        if f2(i)>=f2m
            if f1(i)>f1max
                f1max=f1(i)
            end
            if f2(i)>f2max
                f2max=f2(i)
            end
        end
    end
    i=i+1
    
end
plot(x,f2m)
xlim([0 45]);
ylim([0 30]);
for i=1:50
    plot(f1(i),f2(i),'.-b');
    if (f1(i) == f1max)
            plot(f1(i),f2(i),'.-g');
    end
    if (f2(i) == f2max)
            plot(f1(i),f2(i),'.-r');
    end
end
fprintf('Номер\tf1\tf2\n');
for i=1:50
fprintf('%i\t%.2f\t%.2f\n',i,f1(i),f2(i));
end
fprintf('f1ср = %.2f\n',f1m)
fprintf('f2ср = %.2f\n',f2m)
