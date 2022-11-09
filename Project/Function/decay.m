function [ ] = decay (nucliide, startingActy, timeDur)


finalAmnt = [];


%{
 Come back to this later, trying to read the halflife from the structure
 rather than using if statements. The if statements do at least work
 though...
%}

% for inuc=1:length(nucliides)
%     if(strcmpi(nucliide,nucc(inuc).symbol))
%         finalamnt = startingacty*exp(-(log(2)/nucc(inuc).halflife)*timedur);
%         break;
%     end
% end

if (strcmpi(nucliide,'SM137')==1)
    % activity calculation
    finalAmnt = startingActy*exp(-(log(2)/45)*timeDur);
    fprintf('The final activity of %s is %.3e.\n',nucliide,finalAmnt)
    
    % figure generation
    lg=2;
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
elseif (strcmpi(nucliide,'I137')==1)
    % activity calculation
    finalAmnt = startingActy*exp(-(log(2)/24.5)*timeDur);
    fprintf('The final activity of %s is %.3e.\n',nucliide,finalAmnt)
    
    % figure generation
    lg=2;
    tpnt=[0 0];
    bpnt=[0 -lg]; 
    yek=figure(1);
    set(yek,'Name','Iodine 137 Decay Chart','NumberTitle','off')
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
    
    text((-0.06+tpnt(1)),(0.18+tpnt(2)),'137I','FontSize',14,'FontWeight','bold');
    text((-0.06+tpnt(1)),(0.25+bpnt(2)),'137Xe','FontSize',14,'FontWeight','bold');
    text((-0.06+tpnt(1)),2.15*(0.25+bpnt(2)),'137Cs','FontSize',14,'FontWeight','bold');
    text((-0.06+tpnt(1)),3.25*(0.25+bpnt(2)),'137Ba','FontSize',14,'FontWeight','bold');
    text((0.94+tpnt(1)),(0.25+bpnt(2)),'136Xe','FontSize',14,'FontWeight','bold');
    text((0.96+tpnt(1)),2.15*(0.25+bpnt(2)),'136Ba','FontSize',14,'FontWeight','bold');

elseif (strcmpi(nucliide,'I138')==1)
    % activity calculation
    finalAmnt = startingActy*exp(-(log(2)/6.23)*timeDur);
    fprintf('The final activity of %s is %.3e.\n',nucliide,finalAmnt)
    
    % figure generation
    lg=2;
    tpnt=[0 0];
    bpnt=[0 -lg];
    yek=figure(1);
    set(yek,'Name','Iodine 138 Decay Chart','NumberTitle','off')
    axis([-0.5 1.5 -6.1 0.5]);
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
    plot([-0.5*(bpnt(2)) -0.5*(bpnt(2))], ...
        [2*bpnt(2) 2.75*bpnt(2)], ...
        'k','LineWidth',2);
    hold off;
    
    text((-0.06+tpnt(1)),(0.18+tpnt(2)),'^{138}I','FontSize',16,'FontWeight','bold');
    text((-0.06+tpnt(1)),(0.25+bpnt(2)),'137_{Xe}','FontSize',16,'FontWeight','bold');
    text((-0.06+tpnt(1)),2.15*(0.25+bpnt(2)),'137-Cs','FontSize',16,'FontWeight','bold');
    text((-0.06+tpnt(1)),3.25*(0.25+bpnt(2)),'137Ba','FontSize',14,'FontWeight','bold');
    text((0.94+tpnt(1)),(0.25+bpnt(2)),'^{138}Xe','FontSize',16,'FontWeight','bold');
    text((0.96+tpnt(1)),2.15*(0.25+bpnt(2)),'138Cs','FontSize',16,'FontWeight','bold');
    text((0.96+tpnt(1)),3.25*(0.25+bpnt(2)),'138Ba','FontSize',14,'FontWeight','bold');
end


% end of function
end