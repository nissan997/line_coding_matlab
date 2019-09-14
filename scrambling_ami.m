a=[-1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1];%de2bi(58,16,'left-msb');
j=0;
n=length(a);
for i=1:n
    if a(i)==0;
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
subplot(3,1,1)
stairs(a,'LineWidth',2.5)
title('Binary Signal')
axis([0 (n+1) -2 2])
grid on
grid minor
subplot(3,1,2)
stairs(b,'LineWidth',2.5)
title('Bipolar AMI')
axis([0 (n+1) -2 2])
grid on
grid minor
n=length(b);
j=0;
l=0;
for i=1:n
    if b(i)==0
        j=j+1;
        l=i-8;
        if j==8 && b(i-8)== 1
            c(l:l+8)=[1,0,0,0,1,-1,0,-1,1];
        elseif j==8 && b(i-8)== -1
            c(l:l+8)=[-1,0,0,0,-1,1,0,1,-1];
        elseif j==8 && b(i-8)== 0
            c(l:l+8)=[1,0,0,0,1,-1,0,-1,1];
        end
    else
        j=0;
        c(i)=b(i)
    end
end
subplot(313)
stairs(c,'LineWidth',2.5)
axis([0 n -2 2])
grid on
grid minor
