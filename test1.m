my_timer = test();

function a = test
%https://www.mathworks.com/matlabcentral/answers/75125-how-to-run-a-for-loop-every-one-second
a = timer('ExecutionMode','fixedRate','Period',0.5,'TimerFcn',@myfun);
start(a);
end
function myfun(obj,evt)
for i=1:3
    disp(datestr(now));
end
disp('===============');
end

