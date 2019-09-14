a=round(rand(1,10));
j=0;
for i=1:10
    if a(i)==1
        b(i)=0;
    else
        j=j+1;
        if mod(j,2)==0
            b(i)=-1;
        else
            b(i)=+1;
        end
    end
end
subplot(2,1,1)
stairs(a,'LineWidth',2.5)
title('Binary Signal')
subplot(2,1,2)
stairs(b,'LineWidth',2.5)
title('Bipolar Pseudoternary')