%----------根据输入电流I，求取使用UI模型所建立的PI模型的光功率P-----------
clc
clear all
close all
data=xlsread('data.xlsx');
%% 
p=data(:,2);%光功率
i=data(:,1);%驱动电流
u=data(:,3);%电压
t0=data(:,4);%环境温度
%% 
for j=1:1401
   disp(['请稍后，正在进行第',num2str(j),'次计算...']);
   syms P I              %声明变量，P为因变量，I为自变量
   f1=I-i(j);            %相当于给定输入值I
   %20摄氏度下的UI模型带入后的系统模型
   f=0.2884*(I-4.1808-3.1208-0.0624*(293.15+(I.*(0.0579*I+0.15*log(1+1.03e5*I))-P)*2.1035)+4.0756e-4*(293.15+(I.*(0.0579*I+0.15*log(1+1.03e5*I))-P)*2.1035)^2+4.1335e-7*(293.15+(I.*(0.0579*I+0.15*log(1+1.03e5*I))-P)*2.1035)^3-2.7308e-9*(293.15+(I.*(0.0579*I+0.15*log(1+1.03e5*I))-P)*2.1035)^4)-P';
   [I,P]=solve(f1,f) ;
   if P<0        %光功率大于0
       P=0;
   end
   y(j)=P;  
end
  P=y';%得到的光功率P



