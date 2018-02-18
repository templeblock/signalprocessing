%
% pr6_2_2 
close all; clear all; clc;
fs=1024;                     % ����Ƶ��
N=1024;                      % �źų���
rad=pi/180;                  % 1����
t=(0:N-1)/fs;                % ʱ������
f1=80; phy1=30.7; A1=4;      % �ź�1����
f2=150.232; phy2=75.2; A2=3; % �ź�2����
f3=253.5453; phy3=240; A3=1; % �ź�3����

x=A1*sin(2*pi*f1*t+phy1*rad)+A2*sin(2*pi*f2*t+phy2*rad)+...
    A3*cos(2*pi*f3*t+phy3*rad);
NXX=[75 85; 145 155; 250 260]; % ����Ѱ�����ֵ����
% Ѱ�ҷ�ֵ����ȡ�����źŵĲ���
for k=1 : 3
    NX=NXX(k,:);               % ��ȡ��Ѱ������
    Z=specor_m1(x,fs,N,NX,2);  % ͨ����ֵ��������ȡ�źŲ���
    fprintf('%4d   %5.4f   %5.4f   %5.4f   %5.4f\n',k,Z(1),Z(2),Z(3),Z(3)/rad); 
end