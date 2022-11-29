% Variable initialization
lg=2;
tpnt=[0 0];
bpnt=[0 -lg];

% Create the figure
yek2=figure(2);
% Set figure properties
set(yek2,'Name','Iodine 137 Probabilistic Decay Chart','NumberTitle','off')
axis([-0.5 1.5 -6.1 0.5]);
hold on;

% Plot points and lines for the tree. Set bottom point and top point, then
% repeat until we have all the legs of the tree that are needed.
plot([tpnt(1) bpnt(1)],[tpnt(2) 0.75*bpnt(2)],'k','LineWidth',1);
plot([tpnt(1) bpnt(1)],[bpnt(2) 1.75*bpnt(2)],'k','LineWidth',1);
plot([tpnt(1) bpnt(1)],[2*bpnt(2) 2.75*bpnt(2)],'k','LineWidth',1);
plot([tpnt(1) -0.5*(bpnt(2))],[tpnt(2) 0.75*bpnt(2)], 'k', ...
    'LineWidth', 4, 'Color', [0.7 0.7 0.9]);
plot([-0.5*(bpnt(2)) -0.5*(bpnt(2))],[bpnt(2) 1.75*bpnt(2)], ...
    'k','LineWidth', 4, 'Color', [0.7 0.7 0.9]);
hold off;

% Add the text to the trees in the right spots
text((-0.06+tpnt(1)),(0.18+tpnt(2)),'^{137}I','FontSize',16, ...
    'FontWeight','bold','Color', [0.6 0.5 0.99]);
text((-0.06+tpnt(1)),(0.25+bpnt(2)),'^{137}Xe','FontSize',16);
text((-0.06+tpnt(1)),2.15*(0.25+bpnt(2)),'^{137}Cs','FontSize',16);
text((-0.06+tpnt(1)),3.29*(0.25+bpnt(2)),'^{137}Ba','FontSize',16);
text((0.94+tpnt(1)),(0.23+bpnt(2)),'^{136}Xe','FontSize',16, ...
    'FontWeight','bold','Color', [0.6 0.5 0.99]);
text((0.96+tpnt(1)),2.15*(0.25+bpnt(2)),'^{136}Ba','FontSize',16, ...
    'FontWeight','bold','Color', [0.6 0.5 0.99]);
