cla
grid on
hold on
x=0:45;
y1=30-0.5*x;
y2=15-2*x;
i=1;
F1=[];
F2=[];
F1max=0;
F2max=0;
while i<=50
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
while i<=50
    F1(i)=0.3*f1(i) + 0.7*f2(i);
    F2(i)=0.8*f1(i) + 0.2*f2(i);
    if (F1(i)>F1max)
        F1max = F1(i);
    end
    if (F2(i)>F2max)
        F2max = F2(i);
    end
    i=i+1;
end
i=1

xlim([0 45]);
ylim([0 30]);
for i=1:50
    if (F1(i) == F1max)
            plot(f1(i),f2(i),'.-g');
    end
    if (F2(i) == F2max)
            plot(f1(i),f2(i),'.-r');
    end
    if (F1(i) < F1max)
        if (F2(i) < F2max)
            plot(f1(i),f2(i),'.-b');
        end
    end
end
fprintf('Номер\tf1\tf2\tF1\tF2\n');
for i=1:50
fprintf('%i\t%.2f\t%.2f\t%.2f\t%.2f\n',i,f1(i),f2(i),F1(i),F2(i));
end
fprintf('F1=0.3f1+0.7f2\n')
fprintf('F1max = %.2f\n',F1max)
fprintf('F1=0.2f1+0.8f2\n')
fprintf('F2max = %.2f\n',F2max)

