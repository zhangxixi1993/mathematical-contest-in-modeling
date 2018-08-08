%-----------不使用UI模型建立PI模型，得到一系列PI曲线---------

clc
clear all
close all
data=xlsread('data.xlsx');
data_P=xlsread('model_P.xlsx');  %不使用UI模型所建立的PI模型所求得的P
%% 
p=data(:,2);%光功率
i=data(:,1);%驱动电流
u=data(:,3);%电压
t0=data(:,4);%环境温度
figure(1)
plot3(i,u,p)
xlabel('驱动电流mA')
ylabel('电压V')
zlabel('光功率mW')
title('实测数据光功率和电压及电流的散点图')
grid on
figure(2)
plot(i,p,'--b')
hold on



%% 10摄氏度
P=data_P(:,1);
plot(i,P,'-b')
hold on
%% 20摄氏度
P=data_P(:,2);
plot(i,P,'-r')
hold on
%% 30摄氏度
P=data_P(:,3);
plot(i,P,'-k')
hold on
%% 40摄氏度
P=data_P(:,4);
plot(i,P,'-y')
hold on
%% 50摄氏度
P=data_P(:,5);
plot(i,P,'-m')
hold on
%% 60摄氏度
P=data_P(:,6);
plot(i,P,'-k')
hold on
% %% 70摄氏度
% P=data_P(:,7);
% plot(i,P,'-c')
% hold on
% %% 80摄氏度
% P=data_P(:,8);
% plot(i,P,'-r')
% hold on
% %% 90摄氏度
% P=data_P(:,9);
% plot(i,P,'-r')


%% 30.6摄氏度
P=data_P(:,10);
plot(i,P,'--r')
hold on

Tmax=30.6;
Imax=11.39;
plot([0 Imax],[2 2],'-.b');
hold on
plot([Imax Imax],[0 2],'-.b');
hold on
text(Imax,2,'Tmax=30.6℃')

title('P-I曲线')
xlabel('驱动电流I/mA')
ylabel('光功率P/mW')
legend('20℃实测数据曲线','10℃模型','20℃模型','30℃模型','40℃模型','50℃模型','60℃模型','Tmax=30.6℃模型')

