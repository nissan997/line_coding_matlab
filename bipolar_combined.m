a=[0,0,1,1,1,0,1,0];
j=0;
k=0;
for i=1:8
    if a(i)==0;
        b(i)=0;
        k=k+1;
        if mod(k,2)==0
            c(i)=-1;
        else
            c(i)=+1;
        end
    else
        c(i)=0;
        j=j+1;
        if mod(j,2)==0
            b(i)=-1;
        else
            b(i)=+1;
        end
    end
end
subplot(3,1,1)
stairs(a,'LineWidth',2.5)
title('Binary Signal')
subplot(3,1,2)
stairs(b,'LineWidth',2.5)
title('Bipolar AMI')
subplot(3,1,3)
stairs(c,'LineWidth',2.5)
title('Bipolar Pseudoternary')