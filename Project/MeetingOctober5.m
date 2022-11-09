%{ 

Need to write a function

needs widths and heights, put boxes at end
loop over to create other branches

need to think about how to do it dynamically, but can still do it in a
function



So how to create the function for the brackest?

    |
    |
 -------
|       |
|       |

%}



function [] = bra_ket(topPoint,bottomPointL,bottomPointR)
    % fist down line
    plot([topPoint(1) topPoint(1)],...
        [topPoint(2) topPoint(2)-0.5*(topPoint(2)-bottomPointL(2))],...
        'k','LineWidth',2);
    % making the cross bar
    plot([bottomPointL(1) bottomPointR(1)]...
        [topPoint(2)-0.5*(topPoint(2)-bottomPoint1(2) topPoint(2)-0.5*(topPoint(2)-bottomPoint1(2))],...
        'k','LineWidth',2);
    % making the next down lines
    plot([bottomPointL(1) bottomPointL(1)]...
        )





end
