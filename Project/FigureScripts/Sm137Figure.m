
% Variable initialization
lg=2;
tpnt=[0 0];
bpnt=[0 -1];

% Create the figure
yek = figure(1);
% Set figure properties
set(yek,'Name','Samarium 137 Decay Chart','NumberTitle','off')
axis([-0.25 0.25 -6.25 0.5]);
title '137Sm';
hold on;

% Plot points and lines for the tree. Set bottom point and top point, then
% repeat until we have all the legs of the tree that are needed.
plot([tpnt(1) bpnt(1)],[tpnt(2) 0.64*bpnt(2)],'k','LineWidth', 2);
plot([tpnt(1) bpnt(1)],[bpnt(2) 1.64*bpnt(2)],'k','LineWidth', 2);
plot([tpnt(1) bpnt(1)],[2*bpnt(2) 2.64*bpnt(2)],'k','LineWidth', 2);
plot([tpnt(1) bpnt(1)],[3*bpnt(2) 3.64*bpnt(2)],'k','LineWidth', 2);
plot([tpnt(1) bpnt(1)],[4*bpnt(2) 4.64*bpnt(2)],'k','LineWidth', 2);
plot([tpnt(1) bpnt(1)],[5*bpnt(2) 5.64*bpnt(2)],'k','LineWidth', 2);
hold off;

% Add the text to the trees in the right spots
text((-0.03+tpnt(1)),(0.2+tpnt(2)),'^{137}Sm','FontSize', 16, ...
    'FontWeight', 'bold');
text((-0.03+tpnt(1)),(0.2+bpnt(2)),'^{137}Pm','FontSize', 16, ...
    'FontWeight', 'bold');
text((-0.03+tpnt(1)),2.25*(0.2+bpnt(2)),'^{137}Nd','FontSize', 16, ...
    'FontWeight', 'bold');
text((-0.03+tpnt(1)),3.49*(0.2+bpnt(2)),'^{137}Pr','FontSize', 16, ...
    'FontWeight', 'bold');
text((-0.03+tpnt(1)),4.74*(0.2+bpnt(2)),'^{137}Ce','FontSize', 16, ...
    'FontWeight', 'bold');
text((-0.03+tpnt(1)),5.99*(0.2+bpnt(2)),'^{137}La','FontSize', 16, ...
    'FontWeight', 'bold');
text((-0.03+tpnt(1)),7.25*(0.2+bpnt(2)),'^{137}Ba','FontSize', 16, ...
    'FontWeight', 'bold');