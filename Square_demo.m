sca;
close all;
clearvars;

PsychDefaultSetup(2);
Screen('Preference', 'SkipSyncTests', 1);
screens = Screen('Screens');
screenNumber = max(screens);

black = BlackIndex(screenNumber); 
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, black);

[screenXpixels, screenYpixels] = Screen('WindowSize', window); 
[xCenter, yCenter] = RectCenter(windowRect);

% ------if using flipsec-------
% ifi = Screen('GetFlipInterval', window);
% topPriorityLevel = MaxPriority(window);
% Priority(topPriorityLevel);
% flipSecs = 1; number can be adjusted for longer flipSecs
% waitframes = round(flipSecs / ifi);
% vbl = Screen('Flip', window);
% -----------------------------
 
for i = 1:5;
    
baseRect = [0 0 500 500];
    
squareXpos = [screenXpixels * rand(1)];
squareYpos = [screenYpixels * rand(1)];
centeredRect = CenterRectOnPointd(baseRect .* rand(1),...
        squareXpos, squareYpos); 
  
rectColor = [rand(1) rand(1) rand(1)];

Screen('FillRect', window, rectColor, centeredRect);
Screen('Flip', window); % if using flipsec, then change to
% vbl = Screen('Flip', window, vbl + (waitframes - 0.5) * ifi);

pause(1)
end 

KbStrokeWait;

sca;


