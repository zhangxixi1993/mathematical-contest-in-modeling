clc
clear all
close all
data=xlsread('data.xlsx');
p=data(:,2);%光功率
i=data(:,1);%驱动电流
u=data(:,3);%电压
t0=data(:,4);%环境温度

%% U-I模型
plot(i,u,'-')
f=@(a,i) a(1)*i+a(2)*log(1+i*a(3));

a0=[1 1 1];  % 假设初始值
r=lsqcurvefit(f,a0,i,u);
hold on
y=r(1)*i+r(2)*log(1+i*r(3));
plot(i,y,'--')
legend('拟合前','拟合后')
title('V-I模型')
xlabel('驱动电流I/mA')
ylabel('电压U/V')
disp(r)
err=mean(abs(y-u)./u)   %平均相对误差