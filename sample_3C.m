%% Sample call to PLSR and PLSDA. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc

%% PLSR %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
X=(readtable("x_input_3Cancer.csv"));
X=table2array(X(:,2:17));

Y=readtable("y_input_3Cancer.csv");
output_table_3C=zeros(100,2);

Y=table2array(Y(:,2));
varNames = {'CD8 TN','CD8 PD1','CD8 TIGIT','CD8 TIGITPD1','CD8 LAG3','CD8 LAG3PD1','CD8 LAG3TIGIT','CD8 TP','CD4 TN','CD4 PD1','CD4 TIGIT','CD4 TIGITPD1','CD4 LAG3','CD4 LAG3PD1','CD4 LAG3TIGIT','CD4 TP'}';
nperm = 1000;
ncomp = 2;
Y_data_name = 'Rate of Tumor Change';

model_PLSR = PLSR_main(X,Y,ncomp,varNames,'no','yes',{'kfold',5},nperm,Y_data_name);

group_time = [4;24;48;72;4;24;48;72;4;24;48;72];

figure(5)
t = tiledlayout(3,3);
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
gscatter(X(:,1),Y,group_time')
P = polyfit(X(:,1), Y, 1);
Bfit = polyval(P, X(:,1));
hold on
plot(X(:,1), Bfit,'-r')
hold off
xlabel(varNames(1))
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
gscatter(X(:,11),Y,group_time')
P = polyfit(X(:,11), Y, 1);
Bfit = polyval(P, X(:,11));
hold on
plot(X(:,11), Bfit,'-r')
hold off
xlabel(varNames(11))
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
gscatter(X(:,12),Y,group_time')
P = polyfit(X(:,12), Y, 1);
Bfit = polyval(P, X(:,12));
hold on
plot(X(:,12), Bfit,'-r')
hold off
xlabel(varNames(12))
ylabel('Rate of tumor change')



