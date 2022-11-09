
%{
Inputs:
nucliide = dropdown
Anot = user input (in microcuries)
time = user input (in time)


Outputs (after 10 half lives):
Final activity (numeric value)
Plot of decay chain (somehow?)
    - arrows: quiver function
    - text, can use when plotting
    - matlab tree? tinevez.github.io/matlab-tree


Outstanding questions
    - How do we store data for nucliides?
    - How do generate daughters and populate back in to decay
    - How do we deal with probability (using rand)

To Do:
    - Figure out how to do decay chains
    - How to generate on-click command from dropdown

Plan for next 2 weeks
    - Kaylene - Trees
    - Katy - Halflifes and parent/daughter relationships
    - Dean - Make dropdown work
%}
% dd1 = uidropdown;
% dd1.Items = {'Sm137','I137','I138'};
% 
% function selection(dd)
% val = dd.Value;
% end

decay(I138,100,1000)


%testing plots (didn't work)

% figure(1)
% pgon = polyshape([0 0 2 2],[2 0 0 2]);
% plot(pgon)
% 
% figure(2)
% x2 = [1 1 8; 1 1 8;4 4 9;4 4 9];
% y2 = [0 5 5; 7 3 3;7 3 3;9 5 5];
% patch(x2,y2,'green')