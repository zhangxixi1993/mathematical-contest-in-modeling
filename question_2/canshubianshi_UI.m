clc
clear all
close all
data=xlsread('data.xlsx');
%% 
p=data(:,2);%�⹦��
i=data(:,1);%��������
u=data(:,3);%��ѹ
t0=data(:,4);%�����¶�

%% 
F=@(a,x) a(1)*(x(:,2)-a(2)-a(3)-a(4)*(293.15+(x(:,2).*(57.88e-3*x(:,2)+150e-3*log(1+1.03e5*x(:,2)))-x(:,1))*a(5))-a(6)*(293.15+(x(:,2).*(57.88e-3*x(:,2)+150e-3*log(1+1.03e5*x(:,2)))-x(:,1))*a(5)).^2-a(7)*(293.15+(x(:,2).*(57.88e-3*x(:,2)+150e-3*log(1+1.03e5*x(:,2)))-x(:,1))*a(5)).^3-a(8)*(293.15+(x(:,2).*(57.88e-3*x(:,2)+150e-3*log(1+1.03e5*x(:,2)))-x(:,1))*a(5)).^4)-x(:,1);
x=[p,i]; 
a0=[0.5 0.3 1.246 -2.545e-2 2.6 2.908e-4 -2.531e-7 1.022e-9];%%��ֵ
warning off 
[a,r]=nlinfit(x,zeros(size(x,1),1),F,a0);

c=a'; %��ʶ����
%% ����
yita=c(1)
Ith0=c(2)
Rth=c(5)
a0=c(3)
a1=c(4)
a2=c(6)
a3=c(7)
a4=c(8)
