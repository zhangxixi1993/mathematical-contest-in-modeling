%-----------��ʹ��UIģ�ͽ���PIģ�ͣ��õ�һϵ��PI����---------

clc
clear all
close all
data=xlsread('data.xlsx');
data_P=xlsread('model_P.xlsx');  %��ʹ��UIģ����������PIģ������õ�P
%% 
p=data(:,2);%�⹦��
i=data(:,1);%��������
u=data(:,3);%��ѹ
t0=data(:,4);%�����¶�
figure(1)
plot3(i,u,p)
xlabel('��������mA')
ylabel('��ѹV')
zlabel('�⹦��mW')
title('ʵ�����ݹ⹦�ʺ͵�ѹ��������ɢ��ͼ')
grid on
figure(2)
plot(i,p,'--b')
hold on



%% 10���϶�
P=data_P(:,1);
plot(i,P,'-b')
hold on
%% 20���϶�
P=data_P(:,2);
plot(i,P,'-r')
hold on
%% 30���϶�
P=data_P(:,3);
plot(i,P,'-k')
hold on
%% 40���϶�
P=data_P(:,4);
plot(i,P,'-y')
hold on
%% 50���϶�
P=data_P(:,5);
plot(i,P,'-m')
hold on
%% 60���϶�
P=data_P(:,6);
plot(i,P,'-k')
hold on
% %% 70���϶�
% P=data_P(:,7);
% plot(i,P,'-c')
% hold on
% %% 80���϶�
% P=data_P(:,8);
% plot(i,P,'-r')
% hold on
% %% 90���϶�
% P=data_P(:,9);
% plot(i,P,'-r')


%% 30.6���϶�
P=data_P(:,10);
plot(i,P,'--r')
hold on

Tmax=30.6;
Imax=11.39;
plot([0 Imax],[2 2],'-.b');
hold on
plot([Imax Imax],[0 2],'-.b');
hold on
text(Imax,2,'Tmax=30.6��')

title('P-I����')
xlabel('��������I/mA')
ylabel('�⹦��P/mW')
legend('20��ʵ����������','10��ģ��','20��ģ��','30��ģ��','40��ģ��','50��ģ��','60��ģ��','Tmax=30.6��ģ��')

