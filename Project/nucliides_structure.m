%{
This script creates the underlying data structures for the decay app. 

It provides the symbol and half-life values needed for app to function.
%}

% Nucliides
nucliides(1).symbol = 'SM137';
nucliides(11).symbol = 'PM137';
nucliides(12).symbol = 'ND137';
nucliides(13).symbol = 'PR137';
nucliides(14).symbol = 'CE137';
nucliides(15).symbol = 'LA137';
nucliides(16).symbol = 'BA137';

nucliides(2).symbol = 'I137';
nucliides(211).symbol = 'XE137';
nucliides(212).symbol = 'XE136';
nucliides(221).symbol = 'CS137';
nucliides(222).symbol = 'BA136';
nucliides(231).symbol = 'BA137';

nucliides(3).symbol = 'I138';
nucliides(311).symbol = 'XE137';
nucliides(321).symbol = 'XE138';
nucliides(312).symbol = 'CS137';
nucliides(322).symbol = 'CS138';
nucliides(313).symbol = 'BA137';
nucliides(323).symbol = 'BA138';

% Half-lives
nucliides(1).halflife = 45;
nucliides(11).halflife = 144;
nucliides(12).halflife = 2310;
nucliides(13).halflife = 4608;
nucliides(14).halflife = 31968;
nucliides(15).halflife = 1.9e+12;
nucliides(16).halflife = 1e+100;

nucliides(2).halflife = 24.5;
nucliides(211).halflife = 228;
nucliides(212).halflife = 7.6e+28;
nucliides(221).halflife = 946080000;
nucliides(222).halflife = 1e+100;
nucliides(231).halflife = 1e+100;

nucliides(3).halflife = 6.23;
nucliides(311).halflife = 228;
nucliides(321).halflife = 844.8;
nucliides(312).halflife = 946080000;
nucliides(322).halflife = 2004;
nucliides(313).halflife = 1e+100;
nucliides(323).halflife = 1e+100;

% Daughter Nucliides
nucliides(1).daughter = {'PM137'};
nucliides(11).daughter = {'ND137'};
nucliides(12).daughter = {'PR137'};
nucliides(13).daughter = {'CE137'};
nucliides(14).daughter = {'LA137'};
nucliides(15).daughter = {'BA137'};
nucliides(16).daughter = {};

nucliides(2).daughter = {'XE137' 'XE136'};
nucliides(211).daughter = {'CS137'};
nucliides(212).daughter = {'BA136'};
nucliides(221).daughter = {'CS137'};
nucliides(222).daughter = {};
nucliides(231).daughter = {};

nucliides(3).daughter = {'XE138' 'XE137'};
nucliides(311).daughter = {'CS137'};
nucliides(321).daughter = {'CS138'};
nucliides(312).daughter = {'BA137'};
nucliides(313).daughter = {};
nucliides(323).daughter = {};

nucliides(2).decaychance =[.93, .07];
nucliides(3).decaychance =[.95, .05];