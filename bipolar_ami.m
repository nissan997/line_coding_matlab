a=[0,1,0,0,1,1,1,0];  %The binary signal given as a vector
j=0;
for i=1:8
    if a(i)==0;
        b(i)=0;
      
    else
        j=j+1;
        if mod(j,2)==0;
            b(i)=-1;
        else
            b(i)=+1;
        end
    end
end
subplot(2,1,1)
stairs(a,'LineWidth',3);
title('Binary Signal')
subplot(2,1,2)
stairs(b,'LineWidth',3);
title('Bipolar AMI Coding')