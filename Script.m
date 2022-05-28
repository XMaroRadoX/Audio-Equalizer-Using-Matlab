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
    list2 = {'PLAYBACK SPEED (FS)','TYPE OF FILTER','GAIN',...                   
'RETURN TO DEFAULT','BACK TO PLAYER'};
Y = listdlg('ListString',list2);
while Y ~= 5
    if Y == 1
        %change fs
    end
     if Y == 2
          list3 = {'FFR','IIR','BACK TO EQUALIZER'};
        Z = listdlg('ListString',list3);
        while Z ~= 3
            if Z == 1
                %change to ffr
            end
            if Z == 2
                %change to IRR
            end
         list2 = {'PLAYBACK SPEED (FS)','TYPE OF FILTER','GAIN',...                   
'RETURN TO DEFAULT','BACK TO PLAYER'};
Y = listdlg('ListString',list2);
     end
     if Y == 3
         %change gain
     end
     if Y == 4
        list = {'LOAD','PLAY','PAUSE',...                   
        'CLEAR','EQUALIZER','EXIT'};
        X = listdlg('ListString',list);
    end
     end
end
    
       list = {'LOAD','PLAY','PAUSE',...                   
'CLEAR','EQUALIZER','EXIT'};
X = listdlg('ListString',list);
end

end