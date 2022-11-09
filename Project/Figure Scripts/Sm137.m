clear all;
clf;
lg=2
tpnt=[0 0];
bpnt=[0 -1];


figure(1);
axis([-0.25 0.25 -6.25 0.5]);
title '137Sm';
hold on;

plot([tpnt(1) bpnt(1)],...
    [tpnt(2) 0.64*bpnt(2)],...
    'k','LineWidth', 2);
plot([tpnt(1) bpnt(1)],...
    [bpnt(2) 1.64*bpnt(2)],...
    'k','LineWidth', 2);
plot([tpnt(1) bpnt(1)],...
    [2*bpnt(2) 2.64*bpnt(2)],...
    'k','LineWidth', 2);
plot([tpnt(1) bpnt(1)],...
    [3*bpnt(2) 3.64*bpnt(2)],...
    'k','LineWidth', 2);
plot([tpnt(1) bpnt(1)],...
    [4*bpnt(2) 4.64*bpnt(2)],...
    'k','LineWidth', 2);
plot([tpnt(1) bpnt(1)],...
    [5*bpnt(2) 5.64*bpnt(2)],...
    'k','LineWidth', 2);

hold off;

text((-0.03+tpnt(1)),(0.2+tpnt(2)),'137Sm','FontSize', 12, 'FontWeight', 'bold');
text((-0.03+tpnt(1)),(0.2+bpnt(2)),'137Pm','FontSize', 12, 'FontWeight', 'bold');
text((-0.03+tpnt(1)),2.25*(0.2+bpnt(2)),'137Nd','FontSize', 12, 'FontWeight', 'bold');
text((-0.03+tpnt(1)),3.49*(0.2+bpnt(2)),'137Pr','FontSize', 12, 'FontWeight', 'bold');
text((-0.03+tpnt(1)),4.74*(0.2+bpnt(2)),'137Ce','FontSize', 12, 'FontWeight', 'bold');
text((-0.03+tpnt(1)),5.99*(0.2+bpnt(2)),'137La','FontSize', 12, 'FontWeight', 'bold');
text((-0.03+tpnt(1)),7.25*(0.2+bpnt(2)),'137Ba','FontSize', 12, 'FontWeight', 'bold');