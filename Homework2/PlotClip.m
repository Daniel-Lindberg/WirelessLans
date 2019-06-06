clc;
clear all;
load('full_workspace.mat')

base_color_100 = [1.0 0.0 0.0];
base_color_95 = [0.95 0.0 0.0];
base_color_90 = [0.90 0.0 0.0];
base_color_85 = [0.85 0.0 0.0];
base_color_80 = [0.80 0.0 0.0];
base_color_75 = [0.70 0.0 0.0];
base_color_70 = [0.70 0.0 0.0];
base_color_65 = [0.65 0.0 0.0];
base_color_60 = [0.60 0.0 0.0];
base_color_55 = [0.55 0.0 0.0];
base_color_50 = [0.50 0.0 0.0];
base_color_45 = [0.45 0.0 0.0];
base_color_40 = [0.40 0.0 0.0];
base_color_35 = [0.35 0.0 0.0];
base_color_30 = [0.30 0.0 0.0];
base_color_25 = [0.25 0.0 0.0];
base_color_20 = [0.20 0.0 0.0];
base_color_15 = [0.15 0.0 0.0];
base_color_10 = [0.10 0.0 0.0];

figure
semilogy(EbNoVec100,berTheory100, 'b')
hold on
semilogy(EbNoVec100,berVec100(:,1), '*', 'color', base_color_100)
semilogy(EbNoVec95,berVec95(:,1),'*', 'color', base_color_95)
semilogy(EbNoVec90,berVec90(:,1),'*', 'color', base_color_90)
semilogy(EbNoVec85,berVec85(:,1),'*', 'color', base_color_85)
semilogy(EbNoVec80,berVec80(:,1),'*', 'color', base_color_80)
semilogy(EbNoVec75,berVec75(:,1),'*', 'color', base_color_75)
semilogy(EbNoVec70,berVec70(:,1),'*', 'color', base_color_70)
semilogy(EbNoVec65,berVec65(:,1),'*', 'color', base_color_65)
semilogy(EbNoVec60,berVec60(:,1),'*', 'color', base_color_60)
semilogy(EbNoVec55,berVec55(:,1),'*', 'color', base_color_55)
semilogy(EbNoVec50,berVec50(:,1),'*', 'color', base_color_50)
semilogy(EbNoVec45,berVec45(:,1),'*', 'color', base_color_45)
semilogy(EbNoVec40,berVec40(:,1),'*', 'color', base_color_40)
semilogy(EbNoVec35,berVec35(:,1),'*', 'color', base_color_35)
semilogy(EbNoVec30,berVec30(:,1),'*', 'color', base_color_30)
semilogy(EbNoVec25,berVec25(:,1),'*', 'color', base_color_25)
semilogy(EbNoVec20,berVec20(:,1),'*', 'color', base_color_20)
semilogy(EbNoVec15,berVec15(:,1),'*', 'color', base_color_15)
semilogy(EbNoVec10,berVec10(:,1),'*', 'color', base_color_10)

%legend('Simulation','Theory','Location','Best')
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')
grid on
hold off

figure
semilogy(1.0, berVec100(:,1), 'o', 'color', base_color_100)
hold on
semilogy(0.95, berVec95(:,1), 'o', 'color', base_color_95)
semilogy(0.9, berVec90(:,1), 'o', 'color', base_color_90)
semilogy(0.85, berVec85(:,1), 'o', 'color', base_color_85)
semilogy(0.8, berVec80(:,1), 'o', 'color', base_color_80)
semilogy(0.75, berVec75(:,1), 'o', 'color', base_color_75)
semilogy(0.7, berVec70(:,1), 'o', 'color', base_color_70)
semilogy(0.65, berVec65(:,1), 'o', 'color', base_color_65)
semilogy(0.6, berVec60(:,1), 'o', 'color', base_color_60)
semilogy(0.55, berVec55(:,1), 'o', 'color', base_color_55)
semilogy(0.5, berVec50(:,1), 'o', 'color', base_color_50)
semilogy(0.45, berVec45(:,1), 'o', 'color', base_color_45)
semilogy(0.4, berVec40(:,1), 'o', 'color', base_color_40)
semilogy(0.35, berVec35(:,1), 'o', 'color', base_color_35)
semilogy(0.3, berVec30(:,1), 'o', 'color', base_color_30)
semilogy(0.25, berVec25(:,1), 'o', 'color', base_color_25)
semilogy(0.2, berVec20(:,1), 'o', 'color', base_color_20)
semilogy(0.15, berVec15(:,1), 'o', 'color', base_color_15)
semilogy(0.1, berVec10(:,1), 'o', 'color', base_color_10)

xlabel('Clip Rate')
ylabel('Bit Error Rate')
grid on
hold off
