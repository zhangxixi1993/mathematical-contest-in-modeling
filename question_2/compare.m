%--------�Ƚ�20ʱ��ʹ��UIģ�ͺͲ�ʹ��UIģ�͵������ʹ��UIģ������С------
clc
clear all
close all
data=xlsread('data.xlsx');%ԭ����
p=data(:,2);%�⹦��
i=data(:,1);%��������
u=data(:,3);%��ѹ
t0=data(:,4);%�����¶�
data1=xlsread('E:\��ѧ��ģ����\B��\����1\model_P.xlsx'); %��ʹ��UIģ�ͽ�����PIģ�����õ���Pֵ
data2=xlsread('UImodel_P.xlsx'); %ʹ��UIģ�ͽ�����PIģ�����õ���Pֵ
P_noUI=data1(:,2);     %20������µ�P
err_noUI=abs(P_noUI-p);%�в����ֵ
err1=(mean((err_noUI).^2))^0.5   %���������

P_UI=data2(:,1);
err_UI=abs(P_UI-p);    %�в����ֵ
err2=(mean((err_UI).^2))^0.5   %���������

plot(i,err_noUI,'-b',i,err_UI,'-r') %���Ա�����
title('20����ģ����ù⹦��P�Ĳв����ֵ�仯����')
xlabel('��������I/mA')
ylabel('�в����ֵ�仯/mW')
legend('�Ż�ǰ���','�Ż������')