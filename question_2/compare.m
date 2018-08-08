%--------比较20时候使用UI模型和不使用UI模型的误差，结果使用UI模型误差更小------
clc
clear all
close all
data=xlsread('data.xlsx');%原数据
p=data(:,2);%光功率
i=data(:,1);%驱动电流
u=data(:,3);%电压
t0=data(:,4);%环境温度
data1=xlsread('E:\数学建模资料\B题\问题1\model_P.xlsx'); %不使用UI模型建立的PI模型所得到的P值
data2=xlsread('UImodel_P.xlsx'); %使用UI模型建立的PI模型所得到的P值
P_noUI=data1(:,2);     %20℃情况下的P
err_noUI=abs(P_noUI-p);%残差绝对值
err1=(mean((err_noUI).^2))^0.5   %均方根误差

P_UI=data2(:,1);
err_UI=abs(P_UI-p);    %残差绝对值
err2=(mean((err_UI).^2))^0.5   %均方根误差

plot(i,err_noUI,'-b',i,err_UI,'-r') %画对比曲线
title('20℃下模型求得光功率P的残差绝对值变化曲线')
xlabel('驱动电流I/mA')
ylabel('残差绝对值变化/mW')
legend('优化前误差','优化后误差')