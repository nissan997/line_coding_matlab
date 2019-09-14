a=[0,0,1,1,1,0,1,0];
for i=1:8
    if a(i)==0;
        b(i)=1;
    else
        b(i)=-1;
    end
end

for i=1:8
    if i==1
        if a(i)==0
            c(i)=1;
        else a(i)=1
            c(i)=-1;
        end
    elseif (i>1) && (a(i)==0)
        c(i)=c(i-1);
    else
        c(i)=-c(i-1);        
    end
end
subplot(3,1,1)
stairs(a,'LineWidth',2.5)
title('Binary Signal')
grid on;
subplot(3,1,2)
stairs(b,'LineWidth',2.5)
title('Polar NRZ level')
grid on;
subplot(3,1,3)
stairs(c,'LineWidth',2.5)
title('Polar NRZ Invert')
grid on;