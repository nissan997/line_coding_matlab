a=[0,0,1,1,1,0,1,0];
for i=1:8
    if i==1
        if a(i)==0
            b(i)=1;
        else a(i)=1
            b(i)=-1;
        end
    elseif (i>1) && (a(i)==0)
        b(i)=b(i-1);
    else
        b(i)=-b(i-1);        
    end
end
subplot(2,1,1)
stairs(a,'LineWidth',2.5)
title('Binary Signal')
grid on;
subplot(2,1,2)
stairs(b,'LineWidth',2.5)
title('Polar NRZ Invert')
grid on;