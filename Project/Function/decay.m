function [ ] = decay (nucliide, startingActy, timeDur, fullDecay, probDecay)
% Decay is a function designed to provide a simulation of the decay of
% radionuclides.
    % Decay is a function designed to provide a simulation of the decay
    % of radionuclides. It will simulate the decay of a user selected
    % radionuclide and provide a user with information on the final
    % activity level of the nuclide and a graphical plot of the decay
    % chain. It was written to work with a GUI created for this project, 
    % but can be used without the GUI. This function requires 5 inputs:
    %   nucliide - User selected nucliide for modeling. This can
    %       currently provide models for Sm137, I137, and I138.
    %   startActy - User input starting activity level for their selected
    %       nuclide.
    %   timeDur - User input time duration for the simulation.
    %   fullDecay - Boolean choice to simulate full decay chain of the
    %       selected nuclide.
    %   probDecay - Boolean choice to simulate the probabilistic decay 
    %       chain of the selected nuclide.
    % Written by: Kathryn Dunstan (kdunstan@augusta.edu), Kaylene Isbel 
    % (kisbel@augusta.edu), and Dean Meyer (demeyer@augusta.edu).


% Initial setup for the function, creating some variables needed later.
finalamnt = [];
smIcon = imread('Sm137.jpg');
i137Icon = imread('I137.jpg');
i138Icon = imread('I138.jpg');

% Need to create the figures in order to clear them at the start of the 
% function so we don't have overlap in figure generation.
yek = figure(1);
yek2 = figure(2);
clf(yek);
clf(yek2);

% Hide the figures until needed
set(yek,'visible','off')
set(yek2,'visible','off')

% Let's do some basic error checking...

% Check if user didn't select a decay simulation type
if (strcmpi(fullDecay,'no')==1 && strcmpi(probDecay,'no')==1)
    warndlg(['You did not select a type of decay to model. You must ' ...
        'select at least one decay type option.'],'Warning');

% Check if the user is trying to simulate a nuclide we don't have data for
elseif (strcmpi(nucliide,'sm137')==0 && strcmpi(nucliide,'i137')==0 && ...
        strcmpi(nucliide,'i138')==0)
    warndlg(['You did not select a currently available nuclide. Please ' ...
        'select either Sm137, I137, or I138.'],'Warning');

% Check if the user entered a simulation time less than 1 second
elseif (timeDur < 1)
    warndlg(['You entered a simulation time of less than 1 second.' ...
        'You should enter a longer simulation time.'],'Warning');

% Check if the user entered a starting activity of 0.
elseif (startingActy == 0)
    warndlg(['You selected a Starting Activity Level of 0.' ...
        'You should select a larger value'],'Warning');

% Now we start going through the simulation

% User selected full decay and no probabilistic decay
elseif (strcmpi(fullDecay,'yes')==1 && strcmpi(probDecay,'no')==1)
    set(yek,'Visible','on');
    % Sm137, full decay
    if (strcmpi(nucliide,'SM137')==1)
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/45)*timeDur);
        msgbox(sprintf('The final activity of %s is %.3e.\n', ...
            nucliide,finalamnt),'Final Activity','custom',smIcon);

        % call the figure from its script
        Sm137Figure;
    
    % I137, full decay
    elseif (strcmpi(nucliide,'I137')==1)
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/24.5)*timeDur);
        msgbox(sprintf('The final activity of %s is %.3e.\n', ...
            nucliide,finalamnt),'Final Activity','custom',i137Icon);
        
        % call the figure from its script
        I137Figure;
           
    % I138, full decay
    elseif (strcmpi(nucliide,'I138')==1)
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/6.23)*timeDur);
        msgbox(sprintf('The final activity of %s is %.3e.\n', ...
            nucliide,finalamnt),'Final Activity','custom',i137Icon);
        
        % call the figure from its script
        I138Figure;
    end

% User selected probabilistic decay and no full decay    
elseif (strcmpi(fullDecay,'no')==1 && strcmpi(probDecay,'yes')==1)
    % get our random values
    r = 1+99*rand(1);
    set(yek,'Visible','on');

    % Sm137, proabilistic decay
    if (strcmpi(nucliide,'SM137')==1)
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/45)*timeDur);
        msgbox(sprintf(['The final activity of %s is %.3e.\n There was' ...
            ' a 100%% chance of this decay'],nucliide,finalamnt), ...
            'Final Activity','custom',smIcon);
        
        % call the figure from its script
        Sm137Figure;
    
    % I137, proabilistic decay to Xe137
    elseif (strcmpi(nucliide,'I137')==1 && r <= 93)
        set(yek,'Visible','off');
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/24.5)*timeDur);
        msgbox(sprintf(['The final activity of %s is %.3e.\n There was ' ...
            'a 93%% chance of this decay occurring.'],nucliide,finalamnt) ...
            ,'Final Activity','custom',i137Icon);
        
        % call the figure from its script
        I137toXe137;
                    
    % I137, probabilistic decay to Xe136
    elseif (strcmpi(nucliide,'I137')==1 && r > 93)
        set(yek,'Visible','off');
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/24.5)*timeDur);
        msgbox(sprintf(['The final activity of %s is %.3e.\n There was ' ...
            'a 7%% chance of this decay occurring.'],nucliide,finalamnt) ...
            ,'Final Activity','custom',i137Icon);
        
        % call the figure from its script
        I137toXe136;

    % I138, probabilistic decay to Xe138
    elseif (strcmpi(nucliide,'I138')==1 && r <= 95)
        set(yek,'Visible','off');
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/6.23)*timeDur);
        msgbox(sprintf(['The final activity of %s is %.3e.\n There was ' ...
            'a 95%% chance of this decay occurring.'],nucliide,finalamnt) ...
            ,'Final Activity','custom',i138Icon);
        
        % call the figure from its script
        I138toXe138;

    % I138, probabilistic decay to Xe137
    elseif (strcmpi(nucliide,'I138')==1 && r > 95)
        set(yek,'Visible','off');
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/6.23)*timeDur);
        msgbox(sprintf(['The final activity of %s is %.3e.\n There was ' ...
            'a 5%% chance of this decay occurring.'],nucliide,finalamnt) ...
            ,'Final Activity','custom',i138Icon);

        % call the figure from its script
        I138toXe137
    end

% User selected both full decay and probabilistic decay
elseif (strcmpi(fullDecay,'yes')==1 && strcmpi(probDecay,'yes')==1)
    % Get our random value
    r = 1+99*rand(1);
    % Going to need both figures, so make them visible
    set(yek,'Visible','on');
    set(yek2,'Visible','on');

    % Sm137, there's only one decay chain
    if (strcmpi(nucliide,'SM137')==1)
        set(yek2,'Visible','off');
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/45)*timeDur);
        msgbox(sprintf(['The final activity of %s is %.3e.\n There was ' ...
            'a 100%% chance of this decay occurring.'],nucliide,finalamnt) ...
            ,'Final Activity','custom',smIcon);
        
        % figure generation
        Sm137Figure;

    % I137, full decay and probabilistic decay to Xe137
    elseif (strcmpi(nucliide,'I137')==1 && r <= 93)
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/24.5)*timeDur);
        msgbox(sprintf(['The final activity of %s is %.3e.\n There was ' ...
            'a 93%% chance of this decay occurring.'],nucliide,finalamnt) ...
            ,'Final Activity','custom',i137Icon);
        
        % call figures from their scripts
        I137Figure;
        I137toXe137;

    % I137, full decay and probabilistic decay to Xe136
    elseif (strcmpi(nucliide,'I137')==1 && r > 93)
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/24.5)*timeDur);
        msgbox(sprintf(['The final activity of %s is %.3e.\n There was ' ...
            'a 7%% chance of this decay occurring.'],nucliide,finalamnt) ...
            ,'Final Activity','custom',i137Icon);
        
        % call figures from their scripts
        I137Figure;
        I137toXe136;

    % I138, full decay and probabilistic decay to Xe138
    elseif (strcmpi(nucliide,'I138')==1 && r <= 95)
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/6.23)*timeDur);
        msgbox(sprintf(['The final activity of %s is %.3e.\n There was ' ...
            'a 95%% chance of this decay occurring.'],nucliide,finalamnt) ...
            ,'Final Activity','custom',i138Icon);
        
        % call figures from their scripts
        I138Figure;
        I138toXe138

    % I138, full decay and probabilistic decay to Xe137    
    elseif (strcmpi(nucliide,'I138')==1 && r > 95)
        % activity calculation
        finalamnt = startingActy*exp(-(log(2)/6.23)*timeDur);
        msgbox(sprintf(['The final activity of %s is %.3e.\n There was ' ...
            'a 5%% chance of this decay occurring.'],nucliide,finalamnt) ...
            ,'Final Activity','custom',i138Icon);
        
        % call figures from their scripts
        I138Figure;
        I138toXe137;
        
    end

end

% end of function
end