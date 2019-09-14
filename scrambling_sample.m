a=[-1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1];
n=length(a);
j=0;
l=0;
for i=1:n
    if a(i)==0
        j=j+1;
        l=i-8;
        if j==8 && a(i-8)==1
            b(l:l+8)=[1,0,0,0,1,-1,0,-1,1];
        elseif j==8 && a(i-8)==-1
            b(l:l+8)=[-1,0,0,0,-1,1,0,1,-1];
        end
    else
        j=0;
        b(i)=a(i)
    end
end
subplot(211)
stairs(a,'LineWidth',2.5)
axis([0 n -2 2])
grid on
grid minor
subplot(212)
stairs(b,'LineWidth',2.5)
axis([0 n -2 2])
grid on
grid minor