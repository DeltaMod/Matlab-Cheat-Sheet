%% Useful Matlab Tips and Tricks %%

%% Fitting Curves
[Fit,Err] = polyfit(xRange,yRange,1);
[Val] = polyval(Fit,linspace(xstart,xend,steps),Err);
plot(linspace(xstart,xend,steps),Val,'r')

%% Figure Plotting, Locations and such
scrsz = get(groot,'ScreenSize');                                           % Getting Screensize
                 %BL x coord    BL y coord   x stretch   y stretch
FigurePos(1,:) = [0           , scrsz(4)/2,  scrsz(3)/3, scrsz(4)/2.45];   %Top Left
FigurePos(2,:) = [scrsz(3)/3  , scrsz(4)/2,  scrsz(3)/3, scrsz(4)/2.45];   %Top Mid
FigurePos(3,:) = [2*scrsz(3)/3, scrsz(4)/2,  scrsz(3)/3, scrsz(4)/2.45];   %Top Right

FigurePos(4,:) = [0           , 0         ,  scrsz(3)/3, scrsz(4)/2.45];   %Bottom Left
FigurePos(5,:) = [scrsz(3)/3  , 0         ,  scrsz(3)/3, scrsz(4)/2.45];   %Bottom Mid
FigurePos(6,:) = [2*scrsz(3)/3, 0         ,  scrsz(3)/3, scrsz(4)/2.45];   %Bottom Right
% Really though, you should be using FigPos for this, just type "help
% FigPos to lear all about it

%% Pulling in Full Name Directory

addpath('yourapath')
d    = dir('yourpath/*.type');  % get the list of files of .type