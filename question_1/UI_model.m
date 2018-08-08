clc
clear all
close all
data=xlsread('data.xlsx');
p=data(:,2);%�⹦��
i=data(:,1);%��������
u=data(:,3);%��ѹ
t0=data(:,4);%�����¶�

%% U-Iģ��
plot(i,u,'-')
f=@(a,i) a(1)*i+a(2)*log(1+i*a(3));

a0=[1 1 1];  % �����ʼֵ
r=lsqcurvefit(f,a0,i,u);
hold on
y=r(1)*i+r(2)*log(1+i*r(3));
plot(i,y,'--')
legend('���ǰ','��Ϻ�')
title('V-Iģ��')
xlabel('��������I/mA')
ylabel('��ѹU/V')
disp(r)
err=mean(abs(y-u)./u)   %ƽ��������