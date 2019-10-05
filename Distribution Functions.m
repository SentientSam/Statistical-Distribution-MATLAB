%          mu DOF1 DOF2  p1  p2  ?1  ?2
% Sam Lamb 5.0  3    5  0.4 0.5 2.0 3.2

% Samuel Lamb
% 10/4/2019
% Gauss MATLAB Assignment

% expcdf()
% exppdf()
% chi2cdf()
% chi2pdf,
% binocdf()
% binopdf()
% poisscdf()
% poisspdf()
% hold on
% hold off
% figure(gcf)
% pause
% For labeling plots
% xlabel()
% ylabel()
% legend()
% gtext()
% title()
% subplots()

%universal variables
mu = 5.0;
DOF1 = 3;
DOF2 = 5;
p1 = 0.4;
p2 = 0.5;
lam1 = 2.0;
lam2 = 3.2;

%exponential distribution
x = 0:0.2:25;
N = exppdf(x,mu); 
P = expcdf(x,mu);
plot(x,P,x,N);
title('Exponential Distribution SL mu = 5');
legend('CDF','PDF');
pause;

%chi-square distribution
x = 0:0.5:15;
P = chi2cdf(x,3);
P2 = chi2cdf(x,5);
plot(x,P,x,P2);
title('Chi-square CDF SL');
legend('DOF = 3','DOF = 5');
axis ([0 15 0 1]);
pause;


x = 0:0.5:15;
P = chi2pdf(x,3);
P2 = chi2pdf(x,5);
plot(x,P,x,P2);
title('Chi-square PDF SL');
legend('DOF = 3','DOF = 5');
pause;


%binomial distribution

% With Stem and Stair plots, the "hold on" and "hold off" commands
% prove very useful. They allow multiple variables to be plotted
% on the same graph.

x = 0:0.5:10;
N = 10;
BCDF2 = binocdf(x,N,p2);
BCDF1 = binocdf(x,N,p1);
stairs(x,BCDF1);
hold on;
stairs(x,BCDF2);
hold off;
title('Binomial CDF w/ N = 10  SL');
legend('p = 0.4', 'p = 0.5');
pause;

x = 0:1:10;
BPDF1 = binopdf(x,N,p1);
BPDF2 = binopdf(x,N,p2);
stem(x,BPDF1,'^','filled'); %The carrot command makes the output vectors arrows, and the filled command makes the output vectors colored in
hold on;
stem(x,BPDF2,'^','filled');
hold off;
title('Binomial PDF w/ N = 10  SL');
legend('p = 0.4','p = 0.5');
pause;

%poisson distribution
x = 0:1:10;
PCDF2 = poisscdf(x,lam2);
PCDF1 = poisscdf(x,lam1);
stairs(x,PCDF1);
hold on;
stairs(x,PCDF2); 
hold off;
title('Poisson CDF SL');
legend('a1 = 0.4', 'a2 = 0.5');
pause;

PPDF1 = poisspdf(x,lam1);
PPDF2 = poisspdf(x,lam2);
stem(x,PPDF1,'^','filled');
hold on;
stem(x,PPDF2,'^','filled');
hold off;
title('Poisson PDF SL');
legend('a1 = 0.4','a2 = 0.5');
pause;

% y = imread('ruff.jpg');
% imshow(y);
