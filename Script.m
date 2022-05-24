load('filters.mat');
list = {'LOAD','PLAY','PAUSE',...                   
'CLEAR','EQUALIZER','EXIT'};
X = listdlg('ListString',list);
fs = 44100
while X ~= 6

    
if X == 1
  clear all
newData1 = importdata(uigetfile('*.wav'));
vars = fieldnames(newData1);
for i = 1:length(vars)
    assignin('base', vars{i}, newData1.(vars{i}));
end
playerObj = audioplayer(data,fs)
    list = {'LOAD','PLAY','PAUSE',...                   
'CLEAR','EQUALIZER','EXIT'};
X = listdlg('ListString',list);

end
if X == 2
    if isplaying(playerObj) == 0
        play(playerObj)
    end
       list = {'LOAD','PLAY','PAUSE',...                   
'CLEAR','EQUALIZER','EXIT'};
X = listdlg('ListString',list);

end
if X == 3
     if isplaying(playerObj) == 1
        pause(playerObj)
    end
    
    list = {'LOAD','PLAY','PAUSE',...                   
'CLEAR','EQUALIZER','EXIT'};
X = listdlg('ListString',list);

end
if X == 4
    stop(playerObj)
    clear all
    
       list = {'LOAD','PLAY','PAUSE',...                   
'CLEAR','EQUALIZER','EXIT'};
X = listdlg('ListString',list);
end
if X == 5 
       list = {'LOAD','PLAY','PAUSE',...                   
'CLEAR','EQUALIZER','EXIT'};
X = listdlg('ListString',list);
end

end