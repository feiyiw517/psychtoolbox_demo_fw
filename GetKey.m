
% get keyboard input
function [whichKey, when] = GetKey()
flushEvent ('keyIsDown')

keyFlag= 1;
StartTime = GetSecs;

while keyFlag == 1
     [keyIsDown, secs, keyCode] = KbCheck(-3);
     whichKey = KbName(keyCode);
    if keyIsDown == 1
        when = GetSecs - StartTime;
        KbWait = 0;
	keyFlag = 1;
    end 

end
end
