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
for j=1:size(p)
   disp(['���Ժ����ڽ��е�',num2str(j),'�μ���...']);
   syms P V I
   f1=V-u(j);
   f2=I-i(j);
   %f=0.2918*(I-5.4238-2.4769-0.1215*(283.15+(I*V-P)*1.8048)+8.1135e-4*(283.15+(I*V-P)*1.8048)^2-1.6823e-7*(283.15+(I*V-P)*1.8048)^3-3.0193e-9*(283.15+(I*V-P)*1.8048)^4)-P;%10���϶�
   f=0.2918*(I-5.4238-2.4769-0.1215*(293.15+(I*V-P)*1.8048)+8.1135e-4*(293.15+(I*V-P)*1.8048)^2-1.6823e-7*(293.15+(I*V-P)*1.8048)^3-3.0193e-9*(293.15+(I*V-P)*1.8048)^4)-P;%20���϶�
   %f=0.2918*(I-5.4238-2.4769-0.1215*(303.15+(I*V-P)*1.8048)+8.1135e-4*(303.15+(I*V-P)*1.8048)^2-1.6823e-7*(303.15+(I*V-P)*1.8048)^3-3.0193e-9*(303.15+(I*V-P)*1.8048)^4)-P;%30���϶�
   %f=0.2918*(I-5.4238-2.4769-0.1215*(313.15+(I*V-P)*1.8048)+8.1135e-4*(313.15+(I*V-P)*1.8048)^2-1.6823e-7*(313.15+(I*V-P)*1.8048)^3-3.0193e-9*(313.15+(I*V-P)*1.8048)^4)-P;%40���϶�
   %f=0.2918*(I-5.4238-2.4769-0.1215*(323.15+(I*V-P)*1.8048)+8.1135e-4*(323.15+(I*V-P)*1.8048)^2-1.6823e-7*(323.15+(I*V-P)*1.8048)^3-3.0193e-9*(323.15+(I*V-P)*1.8048)^4)-P;%50���϶�
   %f=0.2918*(I-5.4238-2.4769-0.1215*(333.15+(I*V-P)*1.8048)+8.1135e-4*(333.15+(I*V-P)*1.8048)^2-1.6823e-7*(333.15+(I*V-P)*1.8048)^3-3.0193e-9*(333.15+(I*V-P)*1.8048)^4)-P;%60���϶�
   %f=0.2918*(I-5.4238-2.4769-0.1215*(343.15+(I*V-P)*1.8048)+8.1135e-4*(343.15+(I*V-P)*1.8048)^2-1.6823e-7*(343.15+(I*V-P)*1.8048)^3-3.0193e-9*(343.15+(I*V-P)*1.8048)^4)-P;%70���϶�
   %f=0.2918*(I-5.4238-2.4769-0.1215*(353.15+(I*V-P)*1.8048)+8.1135e-4*(353.15+(I*V-P)*1.8048)^2-1.6823e-7*(353.15+(I*V-P)*1.8048)^3-3.0193e-9*(353.15+(I*V-P)*1.8048)^4)-P;%80���϶�
   %f=0.2918*(I-5.4238-2.4769-0.1215*(353.15+(I*V-P)*1.8048)+8.1135e-4*(353.15+(I*V-P)*1.8048)^2-1.6823e-7*(353.15+(I*V-P)*1.8048)^3-3.0193e-9*(353.15+(I*V-P)*1.8048)^4)-P;%90���϶�
%% ��С�⹦�ʶ�Ӧ������¶ȵ�PIģ�ͣ������Tmax=30.6��I=11.39
   %f=0.2918*(I-5.4238-2.4769-0.1215*(303.75+(I*V-P)*1.8048)+8.1135e-4*(303.75+(I*V-P)*1.8048)^2-1.6823e-7*(303.75+(I*V-P)*1.8048)^3-3.0193e-9*(303.75+(I*V-P)*1.8048)^4)-P;%30.6���϶�

   [I,P,V]=solve(f1,f2,f) ;
   y(:,j)=double(P);
   y(2,j)=real(y(2,j));
   if y(2,j)<0
       y(2,j)=0;
   end
end
P=y(2,:)';%ģ�͵õ��Ĺ⹦��P

