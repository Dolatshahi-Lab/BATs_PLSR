%% Sample call to PLSR and PLSDA. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc

% %% PLSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
X=(readtable("x_input_3Donor.csv"));
X=table2array(X(:,2:17));
Y=readtable("y_input_3Donor.csv");
Y=table2array(Y(:,2));
varNames = {'CD8 TN','CD8 PD1','CD8 TIGIT','CD8 TIGITPD1','CD8 LAG3','CD8 LAG3PD1','CD8 LAG3TIGIT','CD8 TP','CD4 TN','CD4 PD1','CD4 TIGIT','CD4 TIGITPD1','CD4 LAG3','CD4 LAG3PD1','CD4 LAG3TIGIT','CD4 TP'}';
nperm = 1000;
ncomp = 2;
Y_data_name = 'output';

model_PLSR = PLSR_main(X,Y,ncomp,varNames,'no','yes',{'kfold',5},nperm,Y_data_name);

group_time = [4;24;48;72;4;24;48;72;4;24;48;72];

figure(4)
t = tiledlayout(4,4);
nexttile
% scatter(X(:,1),Y)
gscatter(X(:,1),Y,group_time)
P = polyfit(X(:,1), Y, 1);
Bfit = polyval(P, X(:,1));
hold on
plot(X(:,1), Bfit,'-r')
hold off
xlabel(varNames(1))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,2),Y,group_time')
P = polyfit(X(:,2), Y, 1);
Bfit = polyval(P, X(:,2));
hold on
plot(X(:,2), Bfit,'-r')
hold off
xlabel(varNames(2))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,3),Y,group_time')
P = polyfit(X(:,3), Y, 1);
Bfit = polyval(P, X(:,3));
hold on
plot(X(:,3), Bfit,'-r')
hold off
xlabel(varNames(3))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,4),Y,group_time')
P = polyfit(X(:,4), Y, 1);
Bfit = polyval(P, X(:,4));
hold on
plot(X(:,4), Bfit,'-r')
hold off
xlabel(varNames(4))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,5),Y,group_time')
P = polyfit(X(:,5), Y, 1);
Bfit = polyval(P, X(:,5));
hold on
plot(X(:,5), Bfit,'-r')
hold off
xlabel(varNames(5))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,6),Y,group_time')
P = polyfit(X(:,6), Y, 1);
Bfit = polyval(P, X(:,6));
hold on
plot(X(:,6), Bfit,'-r')
hold off
xlabel(varNames(6))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,7),Y,group_time')
P = polyfit(X(:,7), Y, 1);
Bfit = polyval(P, X(:,7));
hold on
plot(X(:,7), Bfit,'-r')
hold off
xlabel(varNames(7))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,8),Y,group_time')
P = polyfit(X(:,8), Y, 1);
Bfit = polyval(P, X(:,8));
hold on
plot(X(:,8), Bfit,'-r')
hold off
xlabel(varNames(8))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,9),Y,group_time')
P = polyfit(X(:,9), Y, 1);
Bfit = polyval(P, X(:,9));
hold on
plot(X(:,9), Bfit,'-r')
hold off
xlabel(varNames(9))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,10),Y,group_time')
P = polyfit(X(:,10), Y, 1);
Bfit = polyval(P, X(:,10));
hold on
plot(X(:,10), Bfit,'-r')
hold off
xlabel(varNames(10))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,11),Y,group_time')
P = polyfit(X(:,11), Y, 1);
Bfit = polyval(P, X(:,11));
hold on
plot(X(:,11), Bfit,'-r')
hold off
xlabel(varNames(11))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,12),Y,group_time')
P = polyfit(X(:,12), Y, 1);
Bfit = polyval(P, X(:,12));
hold on
plot(X(:,12), Bfit,'-r')
hold off
xlabel(varNames(12))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,13),Y,group_time')
P = polyfit(X(:,13), Y, 1);
Bfit = polyval(P, X(:,13));
hold on
plot(X(:,13), Bfit,'-r')
hold off
xlabel(varNames(13))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,14),Y,group_time')
P = polyfit(X(:,14), Y, 1);
Bfit = polyval(P, X(:,14));
hold on
plot(X(:,14), Bfit,'-r')
hold off
xlabel(varNames(14))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,15),Y,group_time')
P = polyfit(X(:,15), Y, 1);
Bfit = polyval(P, X(:,15));
hold on
plot(X(:,15), Bfit,'-r')
hold off
xlabel(varNames(15))
ylabel('Rate of tumor change')
nexttile
gscatter(X(:,16),Y,group_time')
P = polyfit(X(:,16), Y, 1);
Bfit = polyval(P, X(:,16));
hold on
plot(X(:,16), Bfit,'-r')
hold off
xlabel(varNames(16))
ylabel('Rate of tumor change')
