lg=2;
tpnt=[0 0];
bpnt=[0 -lg];

yek = figure(1);
set(yek,'Name','Iodine 137 Full Decay Chart','NumberTitle','off')
axis([-0.5 1.5 -6 0.5]);
hold on;

plot([tpnt(1) bpnt(1)], ...
    [tpnt(2) 0.75*bpnt(2)], ...
    'k','LineWidth',2);
plot([tpnt(1) bpnt(1)], ...
    [bpnt(2) 1.75*bpnt(2)], ...
    'k','LineWidth',2);
plot([tpnt(1) bpnt(1)], ...
    [2*bpnt(2) 2.75*bpnt(2)], ...
    'k','LineWidth',2);
plot([tpnt(1) -0.5*(bpnt(2))], ...
    [tpnt(2) 0.75*bpnt(2)], ...
    'k','LineWidth',2);
plot([-0.5*(bpnt(2)) -0.5*(bpnt(2))], ...
    [bpnt(2) 1.75*bpnt(2)], ...
    'k','LineWidth',2);
hold off;

text((-0.06+tpnt(1)),(0.18+tpnt(2)),'^{137}I','FontSize',16, ...
    'FontWeight','bold');
text((-0.06+tpnt(1)),(0.25+bpnt(2)),'^{137}Xe','FontSize',16, ...
    'FontWeight','bold');
text((-0.06+tpnt(1)),2.15*(0.25+bpnt(2)),'^{137}Cs','FontSize',16, ...
    'FontWeight','bold');
text((-0.06+tpnt(1)),3.25*(0.25+bpnt(2)),'^{137}Ba','FontSize',16, ...
    'FontWeight','bold');
text((0.94+tpnt(1)),(0.25+bpnt(2)),'^{136}Xe','FontSize',16, ...
    'FontWeight','bold');
text((0.96+tpnt(1)),2.15*(0.25+bpnt(2)),'^{136}Ba','FontSize',16, ...
    'FontWeight','bold');