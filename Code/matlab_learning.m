%%
%%冒号
x=1:2:10 %从1到10，每间隔2单位赋值 即：1，3，5，7，9

%%
%%linspace创建线性间隔向量 格式：linspace（开始，结束，元素个数）
y=linspace(1,10,4) %linspace（开始，结束，元素个数）

%%
%%矩阵乘法（点乘和叉乘）
a=[1 3 5];
b=[6 8 9];
c=a.*b %点乘：对应位置相乘c=[1*6,3*8,5*9]=[6,24,45]
sum(c)
d = dot(a,b) %点乘求和：1*6+3*8+5*9=75
e=cross(a,b) %叉乘：[3*9-5*8,5*6-1*9,1*8-3*6]=[-13,21,-10]

%%
%%disp显示命令
a=5*3;
b=a*5;
disp(b) %显示变量b的值

%%
%%if判断不等于，符号：“~=”
clear all
clc
a=5;
b=2;
if a~=b
    fprintf('a!=b')
end

%%
%%函数 结构：function 输出形参表=函数名（输入形参表）
% function y=f(x)
%  %x为一个整数
% if x>0
%    y=x^2;
% elseif x==0
%    y=0;
% else 
%    y=x*2;
% end
% disp(y)
% end

%%
%匿名函数 格式f=@(变量列表)表达式
close all;
clc;
b=@(x)(sin(x)+cos(x)); %创建关于x的匿名函数
c=b(pi) %带入pi
d = @(x,y)(sin(x)+cos(y))
e = d(pi,pi)

%%
%scatter直接绘制散点图 格式：scatter(x1,y1)

%%
%绘制条形图
x = [1:4]; %x个数一定要与y个数对应
y = [94,54,65,87];
bar(x,y) %使用bar函数
xlabel('科目')
ylabel('成绩')
title('条形图')
