clear; close all; %clc;
cd '~';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CHANGE HERE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Days_labeling = {[1], [], [], [], [], [], [], [], [], [], [], []}; %What sessions you want to look at
path_orig = '/Users/joanibajlozi/Desktop/P4 bank of data- wo videos'; %Path to P4 bank of data- wo videos

predictedLabels = false;%Run with true to get predicted labels
testLabels = true; %Run with true to have the lines you created display on the graph
testLabels_time = false; %Run with true to use video time as labels
testLabels_time_inv = false;

startIndex = 190; %What sample number you think the person started brushing
endIndex = 2690; %What sample number you think the person finished brushing

accgraph = false;
maggraph = false;
gyrgraph = false;

%Enter your observed time stamp, actual sample position, and freq accuracy
time_stamp = [0.17 0.22 0.29];
act_samp = [464 591 762];
freq_acc = .01;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DO NOT CHANGE BELOW HERE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Intitialization
ids = [1:12];
participant_names = {'Nirmit', 'Nicole', 'Matt', 'Lewis', 'Denise', ...
    'Niloufar', 'Nicole Lin', 'Gracie', 'Hannah', 'Guiselle', 'Anika', 'Amorette'}; 

%% Global Final Variables
SEQUENTIAL = true;
FREESTYLE = false;

%% Parameters
SampRate = 23;

%% Getting data 

for f = 1:length(ids)    
    path_part = strcat(path_orig, '/Participant', {' '}, num2str(ids(f)),  {' - '}, participant_names(ids(f)));
    path_part = path_part{1};
    for g = 1:length(Days_labeling{ids(f)})
        dirpath_part = dir(path_part);
        if isempty(strfind(dirpath_part(4).name, 'Day'))
            DayorSession = '/Session ';
        else
            DayorSession = '/Day ';
        end
        path_day = strcat(path_part, DayorSession, {' '}, num2str(Days_labeling{ids(f)}(g)));
        path_day = path_day{1};
        addpath(genpath(path_day));
        
        [rawAccBrush, rawQuaBrush, rawMagBrush, rawAccHead, rawQuaHead, rawMagHead] ...
            = Daytoraw(Days_labeling{ids(f)}(g), ids(f));
        
        pathname = strcat(path_day, '/Phone 19', '/raw/raw', num2str(rawAccBrush));
        dataAcc_dir = dir(pathname);
        dataAcc_names = [];
        for i = 1 : numel(dataAcc_dir)
            if length(dataAcc_dir(i).name) > 5 && ~isfile(dataAcc_dir(i).name(1:end-3)) && strcmp(dataAcc_dir(i).name(end-1:end), 'gz') 
                gunzip(dataAcc_dir(i).name);
                dataAcc_names = [dataAcc_names; dataAcc_dir(i).name(1:end-3)];
                
            elseif length(dataAcc_dir(i).name) > 5 && strcmp(dataAcc_dir(i).name(end-1:end), 'gz')
                dataAcc_names = [dataAcc_names; dataAcc_dir(i).name(1:end-3)];    
            end
        end
        
        pathname = strcat(path_day, '/Phone 19', '/raw/raw', num2str(rawQuaBrush));
        dataGyr_dir = dir(pathname);
        dataGyr_names = [];
        for i = 1 : numel(dataGyr_dir)
            if length(dataAcc_dir(i).name) > 5 && ~isfile(dataGyr_dir(i).name(1:end-3)) && strcmp(dataGyr_dir(i).name(end-1:end), 'gz') 
                gunzip(dataGyr_dir(i).name);
                dataGyr_names = [dataGyr_names; dataGyr_dir(i).name(1:end-3)];
                
            elseif length(dataAcc_dir(i).name) > 5 && strcmp(dataGyr_dir(i).name(end-1:end), 'gz')
                dataGyr_names = [dataGyr_names; dataGyr_dir(i).name(1:end-3)];    
            end
        end
        
        pathname = strcat(path_day, '/Phone 19', '/raw/raw', num2str(rawMagBrush));
        dataMag_dir = dir(pathname);
        dataMag_names = [];
        for i = 1 : numel(dataMag_dir)
            if length(dataAcc_dir(i).name) > 5 && ~isfile(dataMag_dir(i).name(1:end-3)) && strcmp(dataMag_dir(i).name(end-1:end), 'gz') 
                gunzip(dataMag_dir(i).name);
                dataMag_names = [dataMag_names; dataMag_dir(i).name(1:end-3)];
                
            elseif length(dataAcc_dir(i).name) > 5 && strcmp(dataMag_dir(i).name(end-1:end), 'gz')
                dataMag_names = [dataMag_names; dataMag_dir(i).name(1:end-3)];    
            end
        end      

        pathname = strcat(path_day, '/Phone 19', '/raw/raw', num2str(rawAccHead));
        dataHeadAcc_dir = dir(pathname);
        dataHeadAcc_names = [];
        for i = 1 : numel(dataHeadAcc_dir)
            if length(dataHeadAcc_dir(i).name) > 5 && ~isfile(dataHeadAcc_dir(i).name(1:end-3)) && strcmp(dataHeadAcc_dir(i).name(end-1:end), 'gz') 
                gunzip(dataHeadAcc_dir(i).name);
                dataHeadAcc_names = [dataHeadAcc_names; dataHeadAcc_dir(i).name(1:end-3)];
                
            elseif length(dataHeadAcc_dir(i).name) > 5 && strcmp(dataHeadAcc_dir(i).name(end-1:end), 'gz')
                dataHeadAcc_names = [dataHeadAcc_names; dataHeadAcc_dir(i).name(1:end-3)];    
            end
        end
        
        pathname = strcat(path_day, '/Phone 19', '/raw/raw', num2str(rawQuaHead));
        dataHeadGyr_dir = dir(pathname);
        dataHeadGyr_names = [];
        for i = 1 : numel(dataHeadGyr_dir)
            if length(dataHeadGyr_dir(i).name) > 5 && ~isfile(dataHeadGyr_dir(i).name(1:end-3)) && strcmp(dataHeadGyr_dir(i).name(end-1:end), 'gz') 
                gunzip(dataHeadGyr_dir(i).name);
                dataHeadGyr_names = [dataHeadGyr_names; dataHeadGyr_dir(i).name(1:end-3)];
                
            elseif length(dataHeadGyr_dir(i).name) > 5 && strcmp(dataHeadGyr_dir(i).name(end-1:end), 'gz')
                dataHeadGyr_names = [dataHeadGyr_names; dataHeadGyr_dir(i).name(1:end-3)];    
            end
        end

        pathname = strcat(path_day, '/Phone 19', '/raw/raw', num2str(rawMagHead));
        dataHeadMag_dir = dir(pathname);
        dataHeadMag_names = [];
        for i = 1 : numel(dataHeadMag_dir)
            if length(dataHeadMag_dir(i).name) > 5 && ~isfile(dataHeadMag_dir(i).name(1:end-3)) && strcmp(dataHeadMag_dir(i).name(end-1:end), 'gz') 
                gunzip(dataHeadMag_dir(i).name);
                dataHeadMag_names = [dataHeadMag_names; dataHeadMag_dir(i).name(1:end-3)];
                
            elseif length(dataHeadMag_dir(i).name) > 5 && strcmp(dataHeadMag_dir(i).name(end-1:end), 'gz')
                dataHeadMag_names = [dataHeadMag_names; dataHeadMag_dir(i).name(1:end-3)];    
            end
        end
        if testLabels
            [lineInd, region_names_new] = DaytolineIndandReg(Days_labeling{ids(f)}(g), ids(f));
            lineInd = floor(lineInd);
        end
    %% Data reading
    [col, ~] = size(dataAcc_names);
    if col == 1
        filename = dataAcc_names;
        acc = csvread(filename, 0, 2);
        acctime = csvread(filename,0,0,[0 0 length(acc)-1 0]);
    end
    
    if col == 2
        filename = dataAcc_names(1,:);
        acc = csvread(filename, 0, 2);
        acctime = csvread(filename,0,0,[0 0 length(acc)-1 0]);
        
        filename2 = dataAcc_names(2,:);
        acc2 = csvread(filename2, 0, 2);
        acctime2 = csvread(filename2,0,0,[0 0 length(acc2)-1 0]);

        acc = [acc; acc2];
        acctime = [acctime; acctime2];
    end



    %% Import Data Gyro
    [col, ~] = size(dataGyr_names);
    if col == 1
        filename = dataGyr_names;
        qua = csvread(filename, 0, 2);
    end

    if col == 2
        filename = dataGyr_names(1,:);
        qua = csvread(filename, 0, 2);
        
        filename2 = dataGyr_names(2,:);
        qua2 = csvread(filename2, 0, 2);

        qua = [qua; qua2];
    end
    
    quax = qua(:,1);
    quay = qua(:,2);
    quaz = qua(:,3); 
    qua = [qua, sqrt(ones(length(quax), 1) - quax.^2 - quay.^2 - quaz.^2)];

    %% Import Data Magnetometer 
    [col, ~] = size(dataMag_names);
    if col == 1
        filename = dataMag_names;
        mag = csvread(filename, 0, 2);
        magtime = csvread(filename,0,0,[0 0 length(mag)-1 0]);
    end
    
    if col == 2
        filename = dataMag_names(1,:);
        mag = csvread(filename, 0, 2);
        magtime = csvread(filename,0,0,[0 0 length(mag)-1 0]);
        
        filename2 = dataMag_names(2,:); 
        mag2 = csvread(filename2, 0, 2);
        magtime2 = csvread(filename2,0,0,[0 0 length(mag2)-1 0]);

        mag = [mag; mag2];
        magtime = [magtime; magtime2];
    end
    
    mag = [mag(:,2), mag(:,1), -mag(:,3)];

    %% Data Acc Head
    [col, ~] = size(dataHeadAcc_names);
    if col == 1
        filename = dataHeadAcc_names;
        accHead = csvread(filename, 0, 2);
        accHeadtime = csvread(filename,0,0,[0 0 length(accHead)-1 0]);
    end
    
    if col == 2
        filename = dataHeadAcc_names(1,:);
        accHead = csvread(filename, 0, 2);
        accHeadtime = csvread(filename,0,0,[0 0 length(accHead)-1 0]);
        
        filename2 = dataHeadAcc_names(2,:);
        accHead2 = csvread(filename2, 0, 2);
        accHeadtime2 = csvread(filename2,0,0,[0 0 length(accHead2)-1 0]);

        accHead = [accHead; accHead2];
        accHeadtime = [accHeadtime; accHeadtime2];
    end


    %% Import Data Gyro Head
    [col, ~] = size(dataHeadGyr_names);
    if col == 1
        filename = dataHeadGyr_names;
        quaHead = csvread(filename, 0, 2);
    end
    
    if col == 2
        filename = dataHeadGyr_names(1,:);
        quaHead = csvread(filename, 0, 2);
        
        filename2 = dataHeadGyr_names(2,:);
        quaHead2 = csvread(filename2, 0, 2);

        quaHead = [quaHead; quaHead2];
    end
    
    quaHeadx = quaHead(:,1);
    quaHeady = quaHead(:,2);
    quaHeadz = quaHead(:,3); 
    quaHead = [quaHead, sqrt(ones(length(quaHeadx), 1) - quaHeadx.^2 - quaHeady.^2 - quaHeadz.^2)];

    %% Import Data Magnetometer Head
    [col, ~] = size(dataHeadMag_names);
    if col == 1
        filename = dataHeadMag_names;
        magHead = csvread(filename, 0, 2);
        magHeadtime = csvread(filename,0,0,[0 0 length(magHead)-1 0]);
    end

    if col == 2
        filename = dataHeadMag_names(1,:);
        magHead = csvread(filename, 0, 2);
        magHeadtime = csvread(filename,0,0,[0 0 length(magHead)-1 0]);
        
        filename2 = dataHeadMag_names(2,:); 
        magHead2 = csvread(filename2, 0, 2);
        magHeadtime2 = csvread(filename2,0,0,[0 0 length(magHead2)-1 0]);

        magHead = [magHead; magHead2];
        magHeadtime = [magHeadtime; magHeadtime2];
    end
    
    magHead = [magHead(:,2), magHead(:,1), -magHead(:,3)];

    %% Time stamp modification
    searchrange = 600;
    [~, minInd] = min([length(magtime), length(magHeadtime)]);
    if minInd == 1
        refTime = magtime;
    else
        refTime = magHeadtime;
    end

    accindex = zeros(length(refTime),1);

    for i = 1:length(refTime)
        if i > searchrange && length(acctime) > i+searchrange
            [~, index] = min(abs(refTime(i) - acctime(i-searchrange:i+searchrange)));
            accindex(i) = i-searchrange+index-1;
        elseif i > searchrange
            [~, index] = min(abs(refTime(i) - acctime(i-searchrange:end)));
            accindex(i) = i-searchrange+index-1;
        elseif length(acctime) > i+searchrange
            [~, index] = min(abs(refTime(i) - acctime(1:i+searchrange)));
            accindex(i) = 1+index-1;
        else
            [~, index] = min(abs(refTime(i) - acctime(1:end)));
            accindex(i) = 1+index-1;
        end
    end

    accHeadindex = zeros(length(refTime),1);

    for i = 1:length(refTime)
        if i > searchrange && length(accHeadtime) > i+searchrange
            [~, index] = min(abs(refTime(i) - accHeadtime(i-searchrange:i+searchrange)));
            accHeadindex(i) = i-searchrange+index-1;
        elseif i > searchrange
            [~, index] = min(abs(refTime(i) - accHeadtime(i-searchrange:end)));
            accHeadindex(i) = i-searchrange+index-1;
        elseif length(accHeadtime) > i+searchrange
            [~, index] = min(abs(refTime(i) - accHeadtime(1:i+searchrange)));
            accHeadindex(i) = 1+index-1;
        else
            [~, index] = min(abs(refTime(i) - accHeadtime(1:end)));
            accHeadindex(i) = 1+index-1;
        end
    end


    magindex = zeros(length(refTime),1);

    for i = 1:length(refTime)
        if i > searchrange && length(magtime) > i+searchrange
            [~, index] = min(abs(refTime(i) - magtime(i-searchrange:i+searchrange)));
            magindex(i) = i-searchrange+index-1;
        elseif i > searchrange
            [~, index] = min(abs(refTime(i) - magtime(i-searchrange:end)));
            magindex(i) = i-searchrange+index-1;
        elseif length(magtime) > i+searchrange
            [~, index] = min(abs(refTime(i) - magtime(1:i+searchrange)));
            magindex(i) = 1+index-1;
        else
            [~, index] = min(abs(refTime(i) - magtime(1:end)));
            magindex(i) = 1+index-1;
        end
    end

    magHeadindex = zeros(length(refTime),1);

    for i = 1:length(refTime)
        if i > searchrange && length(magHeadtime) > i+searchrange
            [~, index] = min(abs(refTime(i) - magHeadtime(i-searchrange:i+searchrange)));
            magHeadindex(i) = i-searchrange+index-1;
        elseif i > searchrange
            [~, index] = min(abs(refTime(i) - magHeadtime(i-searchrange:end)));
            magHeadindex(i) = i-searchrange+index-1;
        elseif length(magHeadtime) > i+searchrange
            [~, index] = min(abs(refTime(i) - magHeadtime(1:i+searchrange)));
            magHeadindex(i) = 1+index-1;
        else
            [~, index] = min(abs(refTime(i) - magHeadtime(1:end)));
            magHeadindex(i) = 1+index-1;
        end
    end

    %% Same length 
    acc = acc(accindex,:);
    qua = qua(accindex,:);

    accHead = accHead(accHeadindex,:);
    quaHead = quaHead(accHeadindex,:);

    mag = mag(magindex,:);
    magHead = magHead(magHeadindex,:);

    %% Glitches of magnetometer
        for i = 2:length(mag)-1
            if abs(mag(i,1) - mag(i-1,1)) > 100 && abs(mag(i+1,1) - mag(i,1)) > 100
                mag(i,1) = mag(i-1,1);
            end
        end

        for i = 2:length(mag)-1
            if abs(mag(i,2) - mag(i-1,2)) > 100 && abs(mag(i+1,2) - mag(i,2)) > 100
                mag(i,2) = mag(i-1,2);
            end
        end

        for i = 2:length(mag)-1
            if abs(mag(i,3) - mag(i-1,3)) > 100 && abs(mag(i+1,3) - mag(i,3)) > 100 
                mag(i,3) = mag(i-1,3);
            end
        end

        for i = 2:length(magHead)-1
            if abs(magHead(i,1) - magHead(i-1,1)) > 100 && abs(magHead(i+1,1) - magHead(i,1)) > 100
                magHead(i,1) = magHead(i-1,1);
            end
        end

        for i = 2:length(magHead)-1
            if abs(magHead(i,2) - magHead(i-1,2)) > 100 && abs(magHead(i+1,2) - magHead(i,2)) > 100
                magHead(i,2) = magHead(i-1,2);
            end
        end

        for i = 2:length(magHead)-1
            if abs(magHead(i,3) - magHead(i-1,3)) > 100 && abs(magHead(i+1,3) - magHead(i,3)) > 100 
                magHead(i,3) = magHead(i-1,3);
            end
        end
        %% Quaternin to Gyroscope 
        gyr = Quaternion_to_Angular(qua', SampRate)*180/pi;
        gyr = gyr';

        gyrHead = Quaternion_to_Angular(quaHead', SampRate)*180/pi;
        gyrHead = gyrHead';

        %% Predicted Labels
        
        if predictedLabels
            % Sequential vs. Freestyle
            day = Days_labeling{ids(f)}(g);
            RF_binary = DaytoRFBinary(day, f);
            if ismember(RF_binary, [2,3,6,7,10,11,14,15])
                [predictedLabels, clusterLabels] = PredictedLabels(acc, mag, startIndex, endIndex, FREESTYLE);
            else
                [predictedLabels, clusterLabels] = PredictedLabels(acc, mag, startIndex, endIndex, SEQUENTIAL);
            end
            
            predictedLabels
        end


 %% Frequency Finder
    time_log = 0;
    minSDS = 10000;
    first_diff = 0;
    if testLabels_time
        [lineInd, region_names_new, time_log] = DaytolineIndandReg(Days_labeling{ids(f)}(g) , ids(f));
        lineInd = floor(lineInd);
    end

    for freq = 20 : freq_acc : 30
        curSDS = 0; %current sum of distance squared
        for r = 1 : length(time_stamp)
            %convert time in dec to time in seconds 
            t = time_stamp(r);
            time_int = 100 * t; 
            raw_t = mod(time_int,100) + (time_int - mod(time_int,100))/100 * 60;

            %calculate first one's diff
            if(r == 1)
                first_diff = act_samp(r) - raw_t * freq;
            end

            %Actual position - (Expected + first one's diff)
            EA_diff = act_samp(r) - (raw_t * freq + first_diff);
            curSDS = curSDS + EA_diff^2;
        end

        %update current sum dist squared, store optimal offset and freq
        if(curSDS <= minSDS)
            minSDS = curSDS;
            opt_offset = first_diff;
            opt_f = freq;
        end
    end

    fprintf('Frequency and offset: %d, %d\n', opt_f, (opt_offset));
    %declare predicted time sample array with zeros
    pred_t_samp = zeros(1, length(time_log));

    for r_1 = 1:length(time_log)
        %convert time in dec to time in seconds 
        t = time_log(r_1);
        time_int = 100 * t; 
        raw_t = mod(time_int,100) + (time_int - mod(time_int,100))/100 * 60;

        %calculate expected sample position
        %store value in predicted sample position
        expected_samp_pos = ((raw_t * opt_f ) + opt_offset );
        pred_t_samp(r_1) = expected_samp_pos;
    end
 %% Time Inv
 if testLabels_time_inv
   for r_2 = 1: length(lineInd)
       time_inv    = (lineInd(r_2) - opt_offset )/opt_f/60;
       samp_inv    = mod(time_inv,1)*0.6 + (time_inv - mod(time_inv,1));
       reg_inv     = string(region_names_new(r_2));
       format short
       fprintf('%.2f, %s\n', samp_inv,reg_inv);
   end
end
   
%% Plot

    color = cell(1, 16);
    color(:) = {'k'};

    if accgraph == true
    
        figure('NumberTitle', 'off', 'Name', 'Accelerometer');
        hold on;
        plot(acc(:,1), 'r');
        plot(acc(:,2), 'g');
        plot(acc(:,3), 'b');
        xlabel('sample');
        ylabel('g');
        title(strcat('Participant-', int2str(f), ' , Day-', int2str(Days_labeling{ids(f)}(g))));
        legend('X', 'Y', 'Z');

        %Show the predicted labels
        if predictedLabels
            vline(predictedLabels, color);
        end 
        %show the test labels
        if testLabels
            vline(lineInd,'r', region_names_new);
        end
        %Show Dean test labels
        if testLabels_time
            vline(pred_t_samp ,'c', region_names_new);
        end
        
    end
    
    
    if gyrgraph == true

        figure('NumberTitle', 'off', 'Name', 'Gyroscope');
        hold on;
        plot(gyr(:,1), 'r');
        plot(gyr(:,2), 'g');
        plot(gyr(:,3), 'b');
        xlabel('sample');
        ylabel('degPersec');
        title(strcat('Participant-', int2str(f), ' , Day-', int2str(Days_labeling{ids(f)}(g))));
        legend('X', 'Y', 'Z'); 

        if predictedLabels
            vline(predictedLabels, color);
        end
        if testLabels
            vline(lineInd,'r', region_names_new);
        end
        
        %Show Dean test labels
        if testLabels_time
            vline(pred_t_samp ,'c', region_names_new);
        end
    end
    
    if maggraph == true
        figure('NumberTitle', 'off', 'Name', 'Raw Magnetometer');
        hold on;
        plot(mag(:,1), 'r');
        plot(mag(:,2), 'g');
        plot(mag(:,3), 'b');
        xlabel('sample');
        ylabel('wb/m2');
        title(strcat('Participant-', int2str(f), ' , Day-', int2str(Days_labeling{ids(f)}(g))));
        legend('X', 'Y', 'Z');


        if predictedLabels
        vline(predictedLabels, color);
        end
        if testLabels
        vline(lineInd,'r', region_names_new);
        end
        %Show Dean test labels
        if testLabels_time
            vline(pred_t_samp ,'c', region_names_new);
        end
    end
    
    
    end
end

%% Brushing Status
acc_x = acc(:,1);
pxx = pyulear(acc_x,10);


