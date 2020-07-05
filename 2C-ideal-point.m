cla
grid on
hold on
x=0:45;
y1=30-0.5*x;
y2=15-2*x;
i=1;
R=[];
Rmin=50;
F1max=0;
F2max=0;
while i<=50
    f01=45*rand();
    f02=30*rand();
    if f02<=30-0.5*f01;
        if f02>=15-2*f01
            f1(i)=f01;
            f2(i)=f02;
            if f1(i)>F1max
                F1max = f1(i)
            end
            if f2(i)>F2max
                F2max = f2(i)
            end
            i=i+1;
        end
    end
end
plot(F1max,F2max,'.-g');
plot(x,y1,x,y2)
i=1
while i<=50
    i=i+1
end
xlim([0 45]);
ylim([0 30]);
for i=1:50
    R(i)=sqrt((F1max-f1(i))*(F1max-f1(i))+(F2max-f2(i))*(F2max-f2(i)))
    if R(i)<Rmin
        Rmin=R(i)
    end
    plot(f1(i),f2(i),'.-b')
end
for i=1:50
    if R(i)== Rmin
        line([f1(i) F1max],[f2(i) F2max])
    end
end
fprintf('Номер\tF1\tF2\tR\n');
for i=1:50
 fprintf('%i\t%.2f\t%.2f\t%.2f\n',i,f1(i),f2(i),R(i));
end

