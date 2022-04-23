clear all;
close all;
sca;

% set random seed
rng('default')

% psychtoolbox setup
PsychDefaultSetup(2)
Screen('Preference', 'SkipSyncTests', 1);

% detect screens
screens = Screen('Screens');
screenNumber = max(screens);

% get color indices
white = WhiteIndex(screenNumber);
black = BlackIndex(screenNumber);
grey = white/2;

% set window size
windowsize = [0 0 500 500];

% open window
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, black, windowsize);

% show instruction
text = 'Press any key';
Screen('DrawText', window, text, 100, 100, white);
Screen('Flip', window);

% detect key
% get keyboard input
function [whichKey, when] = GetKey()

keyIsDown= 1;
StartTime = GetSecs;

while keyIsDown == 1
     [keyIsDown, secs, keyCode] = KbCheck();
     whichKey = KbName(keyCode);
    if KbCheck == 1 && keyIsDown == 1
        when = GetSecs - StartTime;
        KbWait = 0;
    end 

end
end

KbStrockwait;
sca;
