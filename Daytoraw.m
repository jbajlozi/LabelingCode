function [rawAccBrush,rawQuaBrush,rawMagBrush,rawAccHead,...
    rawQuaHead,rawMagHead]  = Daytoraw(Day,id)

Raw = { 
    %nirmitP1,didnt have folder for sess38,39 or 40
    {
    % Day 1
    [3,4,10,15,16,22], ... 
    % Day 2
    [3,4,10,15,16,22], ... 
    % Day 3
    [3,4,10,15,16,22], ... 
    % Day 4
    [], ...
    % Day 5
    [3,4,10,15,16,22], ... 
    % Day 6
    [3,4,10,15,16,22], ...
    % Day 7
    [], ...
    % Day 8
    [3,4,10,15,16,22], ... 
    % Day 9
    [3,4,10,15,16,22], ... 
    % Day 10
    [3,4,10,15,16,22], ...
    % Day 11
    [15,16,22,3,4,10], ... 
    % Day 12
    [15,16,22,3,4,10], ...
    % Day 13
    [15,16,22,3,4,10], ...
    % Day 14
    [15,16,22,3,4,10], ...
    % Day 15
    [15,16,22,3,4,10], ...
    % Day 16
    [15,16,22,3,4,10], ...
    % Day 17
    [15,16,22,3,4,10], ...
    % Day 18
    [15,16,22,3,4,10], ... 
    % Day 19
    [15,16,22,3,4,10], ...
    % Day 20
    [15,16,22,3,4,10], ...
    % Day 21
    [15,16,22,3,4,10], ...
    % Day 22
    [3,4,10,15,16,22], ...
    % Day 23
    [15,16,22,3,4,10], ...
    % Day 24
    [3,4,10,15,16,22], ...
    % Day 25
    [15,16,22,3,4,10], ...
    % Day 26
    [15,16,22,3,4,10], ...
    % Day 27
    [15,16,22,3,4,10], ...
    % Day 28
    [3,4,10,15,16,22], ...
    % Day 29
    [3,4,10,15,16,22], ...
    % Day 30
    [15,16,22,3,4,10], ...
    % Day 31
    [3,4,10,15,16,22], ...
    % Day 32
    [15,16,22,3,4,10], ...
    % Day 33
    [15,16,22,3,4,10], ...
    % Day 34
    [15,16,22,3,4,10], ...
    % Day 35
    [15,26,22,3,4,10], ...
    % Day 36
    [15,16,22,3,4,10], ...
    % Day 37
    [15,16,22,3,4,10], ...
    % Day 38
    [], ...
    % Day 39
    [], ...
    % Day 40
    []
    },... 
    
    %nicole no phone19 in sess16// used sess36new//no sess 39 
    {
    % Day 1
    [3,4,10,15,16,22], ...
    % Day 2
    [3,4,10,15,16,22], ...
    % Day 3
    [15,16,22,3,4,10], ...
    % Day 4
    [15,16,22,3,4,10], ...
    % Day 5
    [3,4,10,15,16,22], ...
    % Day 6
    [3,4,10,15,16,22], ...
    % Day 7
    [3,4,10,15,16,22], ...
    % Day 8
    [3,4,10,15,16,22], ...
    % Day 9
    [3,4,10,15,16,22], ...
    % Day 10
    [3,4,10,15,16,22], ...
    % Day 11
    [3,4,10,15,16,22], ...
    % Day 12
    [3,4,10,15,16,22], ...
    % Day 13
    [3,4,10,15,16,22], ...
    % Day 14
    [3,4,10,15,16,22], ...
    % Day 15
    [3,4,10,15,16,22], ...
    % Day 16
    [], ...
    % Day 17
    [3,4,10,15,16,22], ...
    % Day 18
    [3,4,10,15,16,22], ...
    % Day 19
    [15,16,22,3,4,10], ...
    % Day 20
    [15,16,22,3,4,10], ...
    % Day 21
    [15,16,22,3,4,10], ...
    % Day 22
    [3,4,10,15,16,22], ...
    % Day 23
    [15,16,22,3,4,10], ...
    % Day 24
    [3,4,10,15,16,22], ...
    % Day 25
    [3,4,10,15,16,22], ...
    % Day 26
    [3,4,10,15,16,22], ...
    % Day 27
    [3,4,10,15,16,22], ...
    % Day 28
    [15,16,22,3,4,10], ...
    % Day 29
    [15,16,22,3,4,10], ...
    % Day 30
    [15,16,22,3,4,10], ...
    % Day 31
    [15,16,22,3,4,10], ...
    % Day 32
    [15,16,22,3,4,10], ...
    % Day 33
    [15,16,22,3,4,10], ...
    % Day 34
    [3,4,10,15,16,22], ...
    % Day 35
    [15,16,22,3,4,10], ...
    % Day 36
    [15,16,22,3,4,10], ...
    % Day 37
    [15,16,22,3,4,10], ...
    % Day 38
    [15,16,22,3,4,10], ...
    % Day 39
    [], ...
    % Day 40
    [15,16,22,3,4,10]
    },...
    
    %P3Matt,Day15shifteddown//usedday16(not day16(2)//day19noleftwrist//
    {
    % Day 1
    [3,4,10,15,16,22], ...
    % Day 2
    [15,16,22,3,4,10], ...
    % Day 3
    [15,16,22,3,4,10], ...
    % Day 4
    [3,4,10,15,16,22], ...
    % Day 5
    [15,16,22,3,4,10], ...
    % Day 6
    [15,16,22,3,4,10], ...
    % Day 7
    [15,16,22,3,4,10], ...
    % Day 8
    [15,16,22,3,4,10], ...
    % Day 9
    [15,16,22,3,4,10], ...
    % Day 10
    [15,16,22,3,4,10], ...
    % Day 11
    [3,4,10,15,16,22], ...
    % Day 12
    [15,16,22,3,4,10], ...
    % Day 13
    [15,16,22,3,4,10], ...
    % Day 14
    [15,16,22,3,4,10], ...
    % Day 15
    [11,12,18,23,24,30], ...
    % Day 16
    [3,4,10,15,16,22], ...
    % Day 17
    [], ...
    % Day 18
    [3,4,10,15,16,22], ...
    % Day 19
    [], ...
    % Day 20
    [3,4,10,15,16,22], ...
    % Day 21
    [15,16,22,3,4,10], ...
    % Day 22
    [15,16,22,3,4,10], ...
    % Day 23
    [15,16,22,3,4,10], ...
    % Day 24
    [], ...
    % Day 25
    [15,16,22,3,4,10], ...
    % Day 26
    [15,16,22,3,4,10], ...
    % Day 27
    [15,16,22,3,4,10], ...
    % Day 28
    [15,16,22,3,4,10], ...
    % Day 29
    [15,16,22,3,4,10], ...
    % Day 30
    [15,16,22,3,4,10], ...
    % Day 31
    [15,16,22,3,4,10], ...
    % Day 32
    [3,4,10,15,16,22], ...
    % Day 33
    [3,4,10,15,16,22], ...
    % Day 34
    [15,16,22,3,4,10], ...
    % Day 35
    [15,16,22,3,4,10], ...
    % Day 36
    [15,16,22,3,4,10], ...
    % Day 37
    [15,16,22,3,4,10], ...
    % Day 38
    [15,16,22,3,4,10], ...
    % Day 39
    [15,16,22,3,4,10], ...
    % Day 40
    [15,16,22,3,4,10]
    },...
    
    %P4Lewis//usedday7new
    {
    % Day 1
    [15,16,22,3,4,10], ...
    % Day 2
    [3,4,10,15,16,22], ...
    % Day 3
    [3,4,10,15,16,22], ...
    % Day 4
    [15,16,22,3,4,10], ...
    % Day 5
    [3,4,10,15,16,22], ...
    % Day 6
    [3,4,10,15,16,22], ...
    % Day 7
    [3,4,10,15,16,22], ...
    % Day 8
    [3,4,10,15,16,22], ...
    % Day 9
    [15,16,22,3,4,10], ...
    % Day 10
    [3,4,10,15,16,22], ...
    % Day 11
    [3,4,10,15,16,22], ...
    % Day 12
    [3,4,10,15,16,23], ...
    % Day 13
    [3,4,10,15,16,22], ...
    % Day 14
    [3,4,10,15,16,22], ...
    % Day 15
    [3,4,10,15,16,22], ...
    % Day 16
    [3,4,10,15,16,22], ...
    % Day 17
    [15,16,22,3,4,10], ...
    % Day 18
    [15,16,22,3,4,10], ...
    % Day 19
    [15,16,22,3,4,10], ...
    % Day 20
    [], ...
    % Day 21
    [15,16,22,3,4,10], ...
    % Day 22
    [15,16,22,3,4,10], ...
    % Day 23
    [3,4,10,15,16,22], ...
    % Day 24
    [15,16,22,3,4,10], ...
    % Day 25
    [15,16,22,3,4,10], ...
    % Day 26
    [15,16,22,3,4,10], ...
    % Day 27
    [15,16,22,3,4,10], ...
    % Day 28
    [15,16,22,3,4,10], ...
    % Day 29
    [3,4,10,15,16,22], ...
    % Day 30
    [15,16,22,3,4,10], ...
    % Day 31
    [15,16,22,3,4,10], ...
    % Day 32
    [15,16,22,3,4,10], ...
    % Day 33
    [15,16,22,3,4,10], ...
    % Day 34
    [15,16,22,3,4,10], ...
    % Day 35
    [15,16,22,3,4,10], ...
    % Day 36
    [15,16,22,3,4,10], ...
    % Day 37
    [15,16,22,3,4,10], ...
    % Day 38
    [], ...
    % Day 39
    [15,16,22,3,4,10], ...
    % Day 40
    [15,16,22,3,4,10]
    },
    %P5Denise//day36(new)
    {
    % Day 1
    [3,4,10,15,16,22], ...
    % Day 2
    [3,4,10,15,16,22], ...
    % Day 3
    [3,4,10,15,16,22], ...
    % Day 4
    [3,4,10,15,16,22], ...
    % Day 5
    [3,4,10,15,16,22], ...
    % Day 6
    [15,16,22,3,4,10], ...
    % Day 7
    [3,4,10,15,16,22], ...
    % Day 8
    [15,16,22,3,4,10], ...
    % Day 9
    [15,16,22,3,4,10], ...
    % Day 10
    [15,16,22,3,4,10], ...
    % Day 11
    [15,16,22,3,4,10], ...
    % Day 12
    [15,16,22,3,4,10], ...
    % Day 13
    [3,4,10,15,16,22], ...
    % Day 14
    [15,16,22,3,4,10], ...
    % Day 15
    [3,4,10,15,16,22], ...
    % Day 16
    [15,16,22,3,4,10], ...
    % Day 17
    [15,16,22,3,4,10], ...
    % Day 18
    [15,16,22,3,4,10], ...
    % Day 19
    [3,4,10,15,16,22], ...
    % Day 20
    [15,16,22,3,4,10], ...
    % Day 21
    [15,16,22,3,4,10], ...
    % Day 22
    [15,16,22,3,4,10], ...
    % Day 23
    [15,16,22,3,4,10], ...
    % Day 24
    [15,16,22,3,4,10], ...
    % Day 25
    [15,16,22,3,4,10], ...
    % Day 26
    [15,16,22,3,4,10], ...
    % Day 27
    [], ...
    % Day 28
    [3,4,10,15,16,22], ...
    % Day 29
    [15,16,22,3,4,10], ...
    % Day 30
    [15,16,22,3,4,10], ...
    % Day 31
    [3,4,10,15,16,22], ...
    % Day 32
    [3,4,10,15,16,22], ...
    % Day 33
    [3,4,10,15,16,22], ...
    % Day 34
    [15,16,22,3,4,10], ...
    % Day 35
    [15,16,22,3,4,10], ...
    % Day 36
    [15,16,22,3,4,10], ...
    % Day 37
    [15,16,22,3,4,10], ...
    % Day 38
    [15,16,22,3,4,10], ...
    % Day 39
    [15,16,22,3,4,10], ...
    % Day 40
    [15,16,22,3,4,10]
    },
    
    %P6Niloufar
    {
    % Day 1
    [15,16,22,3,4,10], ...
    % Day 2
    [15,16,22,3,4,10], ...
    % Day 3
    [15,16,22,3,4,10], ...
    % Day 4
    [15,16,22,3,4,10], ...
    % Day 5
    [15,16,22,3,4,10], ...
    % Day 6
    [15,16,22,3,4,10], ...
    % Day 7
    [15,16,22,3,4,10], ...
    % Day 8
    [], ...
    % Day 9
    [15,16,22,3,4,10], ...
    % Day 10
    [15,16,22,3,4,10], ...
    % Day 11
    [3,4,10,15,16,22], ...
    % Day 12
    [], ...
    % Day 13
    [15,16,22,3,4,10], ...
    % Day 14
    [3,4,10,15,16,22], ...
    % Day 15
    [15,16,22,3,4,10], ...
    % Day 16
    [3,4,10,15,16,22], ...
    % Day 17
    [3,4,10,15,16,22], ...
    % Day 18
    [15,16,22,3,4,10], ...
    % Day 19
    [3,4,10,15,16,22], ...
    % Day 20
    [3,4,10,15,16,22], ...
    % Day 21
    [3,4,10,15,16,22], ...
    % Day 22
    [15,16,22,3,4,10], ...
    % Day 23
    [15,16,22,3,4,10], ...
    % Day 24
    [15,16,22,3,4,10], ...
    % Day 25
    [], ...
    % Day 26
    [3,4,10,15,16,22], ...
    % Day 27
    [15,16,22,3,4,10], ...
    % Day 28
    [15,16,22,3,4,10], ...
    % Day 29
    [15,16,22,3,4,10], ...
    % Day 30
    [3,4,10,15,16,22], ...
    % Day 31
    [3,4,10,15,16,22], ...
    % Day 32
    [3,4,10,15,16,22], ...
    % Day 33
    [15,16,22,3,4,10], ...
    % Day 34
    [15,16,22,3,4,10], ...
    % Day 35
    [15,16,22,3,4,10], ...
    % Day 36
    [15,16,22,3,4,10], ...
    % Day 37
    [3,4,10,15,16,22], ...
    % Day 38
    [3,4,10,15,16,22], ...
    % Day 39
    [15,16,22,3,4,10], ...
    % Day 40
    [15,16,22,3,4,10]
    },
    %P7Nicoleusethis//only til day13
    {
    % Day 1
    [15,16,22,3,4,10], ...
    % Day 2
    [15,16,22,3,4,10], ...
    % Day 3
    [15,16,22,3,4,10], ...
    % Day 4
    [15,16,22,3,4,10], ...
    % Day 5
    [15,16,22,3,4,10], ...
    % Day 6
    [15,16,22,3,4,10], ...
    % Day 7
    [15,16,22,3,4,10], ...
    % Day 8
    [15,16,22,3,4,10], ...
    % Day 9
    [15,16,22,3,4,10], ...
    % Day 10
    [15,16,22,3,4,10], ...
    % Day 11
    [], ...
    % Day 12
    [], ...
    % Day 13
    [15,16,22,3,4,10], ...
    % Day 14
    [], ...
    % Day 15
    [15,16,22,3,4,10], ...
    % Day 16
    [15,16,22,3,4,10], ...
    % Day 17
    [], ...
    % Day 18
    [15,16,22,3,4,10], ...
    % Day 19
    [15,16,22,3,4,10], ...
    % Day 20
    [15,16,22,3,4,10], ...
    % Day 21
    [], ...
    % Day 22
    [], ...
    % Day 23
    [], ...
    % Day 24
    [], ...
    % Day 25
    [], ...
    % Day 26
    [], ...
    % Day 27
    [], ...
    % Day 28
    [], ...
    % Day 29
    [], ...
    % Day 30
    [], ...
    % Day 31
    [], ...
    % Day 32
    [], ...
    % Day 33
    [], ...
    % Day 34
    [], ...
    % Day 35
    [], ...
    % Day 36
    [], ...
    % Day 37
    [], ...
    % Day 38
    [], ...
    % Day 39
    [], ...
    % Day 40
    []
    },
    %P8Gracie//usedatabase(notdatabase2) 
    {
    % Day 1
    [15,16,22,3,4,10], ...
    % Day 2
    [15,16,22,3,4,10], ...
    % Day 3
    [3,4,10,15,16,22], ...
    % Day 4
    [3,4,10,15,16,22], ...
    % Day 5
    [15,16,22,3,4,10], ...
    % Day 6
    [3,4,10,15,16,22], ...
    % Day 7
    [15,16,22,3,4,10], ...
    % Day 8
    [15,16,22,3,4,10], ...
    % Day 9
    [3,4,10,15,16,22], ...
    % Day 10
    [15,16,22,3,4,10], ...
    % Day 11
    [15,16,22,3,4,10], ...
    % Day 12
    [15,16,22,3,4,10], ...
    % Day 13
    [15,16,22,3,4,10], ...
    % Day 14
    [3,4,10,15,16,22], ...
    % Day 15
    [3,4,10,15,16,22], ...
    % Day 16
    [15,16,22,3,4,10], ...
    % Day 17
    [3,4,10,15,16,22], ...
    % Day 18
    [15,16,22,3,4,10], ...
    % Day 19
    [15,16,22,3,4,10], ...
    % Day 20
    [15,16,22,3,4,10], ...
    % Day 21
    [15,16,22,3,4,10], ...
    % Day 22
    [15,16,22,3,4,10], ...
    % Day 23
    [15,16,22,3,4,10], ...
    % Day 24
    [15,16,22,3,4,10], ...
    % Day 25
    [15,16,22,3,4,10], ...
    % Day 26
    [15,16,22,3,4,10], ...
    % Day 27
    [15,16,22,3,4,10], ...
    % Day 28
    [], ...
    % Day 29
    [3,4,10,15,16,22], ...
    % Day 30
    [3,4,10,15,16,22], ...
    % Day 31
    [15,16,22,3,4,10], ...
    % Day 32
    [15,16,22,3,4,10], ...
    % Day 33
    [15,16,22,3,4,10], ...
    % Day 34
    [15,16,22,3,4,10], ...
    % Day 35
    [15,16,22,3,4,10], ...
    % Day 36
    [15,16,22,3,4,10], ...
    % Day 37
    [15,16,22,3,4,10], ...
    % Day 38
    [15,16,22,3,4,10], ...
    % Day 39
    [15,16,22,3,4,10], ...
    % Day 40
    [15,16,22,3,4,10]
    },... 
    %p9Hannah day8(1)//day10(notday10redo)//day11,12,14,16,17,19,20,22redo
    {
    % Day 1
    [15,16,22,3,4,10], ...
    % Day 2
    [15,16,22,3,4,10], ...
    % Day 3
    [3,4,10,15,16,22], ...
    % Day 4
    [15,16,22,3,4,10], ...
    % Day 5
    [15,16,22,3,4,10], ...
    % Day 6
    [], ...
    % Day 7
    [], ...
    % Day 8
    [3,4,10,15,16,22], ...
    % Day 9
    [3,4,10,15,16,22], ...
    % Day 10
    [3,4,10,15,16,22], ...
    % Day 11
    [15,16,22,3,4,10], ...
    % Day 12
    [15,16,22,3,4,10], ...
    % Day 13
    [3,4,10,15,16,22], ...
    % Day 14
    [15,16,22,3,4,10], ...
    % Day 15
    [3,4,10,15,16,22], ...
    % Day 16
    [15,16,22,3,4,10], ...
    % Day 17
    [15,16,22,3,4,10], ...
    % Day 18
    [15,16,22,3,4,10], ...
    % Day 19
    [15,16,22,3,4,10], ...
    % Day 20
    [15,16,22,3,4,10], ...
    % Day 21
    [15,16,22,3,4,10], ...
    % Day 22
    [15,16,22,3,4,10], ...
    % Day 23
    [15,16,22,3,4,10], ...
    % Day 24
    [15,16,22,3,4,10], ...
    % Day 25
    [15,16,22,3,4,10], ...
    % Day 26
    [15,16,22,3,4,10], ...
    % Day 27
    [15,16,22,3,4,10], ...
    % Day 28
    [15,16,22,3,4,10], ...
    % Day 29
    [15,16,22,3,4,10], ...
    % Day 30
    [15,16,22,3,4,10], ...
    % Day 31
    [15,16,22,3,4,10], ...
    % Day 32
    [15,16,22,3,4,10], ...
    % Day 33
    [15,16,22,3,4,10], ...
    % Day 34
    [15,16,22,3,4,10], ...
    % Day 35
    [15,16,22,3,4,10], ...
    % Day 36
    [15,16,22,3,4,10], ...
    % Day 37
    [15,16,22,3,4,10], ...
    % Day 38
    [15,16,22,3,4,10], ...
    % Day 39
    [15,16,22,3,4,10], ...
    % Day 40
    [15,16,22,3,4,10]
    },
    %P10//day8shifted//day20replacement
    {
    % Day 1
    [15,16,22,3,4,10], ...
    % Day 2
    [15,16,22,3,4,10], ...
    % Day 3
    [15,16,22,3,4,10], ...
    % Day 4
    [15,16,22,3,4,10], ...
    % Day 5
    [3,4,10,15,16,22], ...
    % Day 6
    [15,16,22,3,4,10], ...
    % Day 7
    [15,16,22,3,4,10], ...
    % Day 8
    [23,24,30,10,12,18], ...
    % Day 9
    [3,4,10,15,16,22], ...
    % Day 10
    [15,16,22,3,4,10], ...
    % Day 11
    [15,16,22,3,4,10], ...
    % Day 12
    [3,4,10,15,16,22], ...
    % Day 13
    [3,4,10,15,16,22], ...
    % Day 14
    [15,16,22,3,4,10], ...
    % Day 15
    [], ...
    % Day 16
    [15,16,22,3,4,10], ...
    % Day 17
    [15,16,22,3,4,10], ...
    % Day 18
    [], ...
    % Day 19
    [3,4,10,15,16,22], ...
    % Day 20
    [15,16,22,3,4,10], ...
    % Day 21
    [3,4,10,15,16,22], ...
    % Day 22
    [], ...
    % Day 23
    [15,16,22,3,4,10], ...
    % Day 24
    [15,16,22,3,4,10], ...
    % Day 25
    [15,16,22,3,4,10], ...
    % Day 26
    [3,4,10,15,16,22], ...
    % Day 27
    [], ...
    % Day 28
    [3,4,10,15,16,22], ...
    % Day 29
    [], ...
    % Day 30
    [15,16,22,3,4,10], ...
    % Day 31
    [3,4,10,15,16,22], ...
    % Day 32
    [], ...
    % Day 33
    [3,4,10,15,16,22], ...
    % Day 34
    [15,16,22,3,4,10], ...
    % Day 35
    [15,16,22,3,4,10], ...
    % Day 36
    [15,16,22,3,4,10], ...
    % Day 37
    [15,16,22,3,4,10], ...
    % Day 38
    [], ...
    % Day 39
    [15,16,22,3,4,10], ...
    % Day 40
    [15,16,22,3,4,10]
    },
    %P11Anika
    {
    % Day 1
    [3,4,10,15,16,22], ...
    % Day 2
    [3,4,10,15,16,22], ...
    % Day 3
    [3,4,10,15,16,22], ...
    % Day 4
    [3,4,10,15,16,22], ...
    % Day 5
    [3,4,10,15,16,22], ...
    % Day 6
    [15,16,22,3,4,10], ...
    % Day 7
    [15,16,22,3,4,10], ...
    % Day 8
    [], ...
    % Day 9
    [3,4,10,15,16,22], ...
    % Day 10
    [15,16,22,3,4,10], ...
    % Day 11
    [15,16,22,3,4,10], ...
    % Day 12
    [15,16,22,3,4,10], ...
    % Day 13
    [15,16,22,3,4,10], ...
    % Day 14
    [15,16,22,3,4,10], ...
    % Day 15
    [15,16,22,3,4,10], ...
    % Day 16
    [15,16,22,3,4,10], ...
    % Day 17
    [3,4,10,15,16,22], ...
    % Day 18
    [3,4,10,15,16,22], ...
    % Day 19
    [], ...
    % Day 20
    [15,16,22,3,4,10], ...
    % Day 21
    [15,16,22,3,4,10], ...
    % Day 22
    [15,16,22,3,4,10], ...
    % Day 23
    [3,4,10,15,16,22], ...
    % Day 24
    [15,16,22,3,4,10], ...
    % Day 25
    [15,16,22,3,4,10], ...
    % Day 26
    [15,16,22,3,4,10], ...
    % Day 27
    [], ...
    % Day 28
    [], ...
    % Day 29
    [15,16,22,3,4,10], ...
    % Day 30
    [15,16,22,3,4,10], ...
    % Day 31
    [15,16,22,3,4,10], ...
    % Day 32
    [15,16,22,3,4,10], ...
    % Day 33
    [15,16,22,3,4,10], ...
    % Day 34
    [15,16,22,3,4,10], ...
    % Day 35
    [15,16,22,3,4,10], ...
    % Day 36
    [], ...
    % Day 37
    [15,16,22,3,4,10], ...
    % Day 38
    [15,16,22,3,4,10], ...
    % Day 39
    [15,16,22,3,4,10], ...
    % Day 40
    [15,16,22,3,4,10]
    },...
    %P12Amorette
    {
    % Day 1
    [15,16,22,3,4,10], ...
    % Day 2
    [15,16,22,3,4,10], ...
    % Day 3
    [15,16,22,3,4,10], ...
    % Day 4
    [15,16,22,3,4,10], ...
    % Day 5
    [15,16,22,3,4,10], ...
    % Day 6
    [15,16,22,3,4,10], ...
    % Day 7
    [15,16,22,3,4,10], ...
    % Day 8
    [15,16,22,3,4,10], ...
    % Day 9
    [15,16,22,3,4,10], ...
    % Day 10
    [3,4,10,15,16,22], ...
    % Day 11
    [15,16,22,3,4,10], ...
    % Day 12
    [15,16,22,3,4,10], ...
    % Day 13
    [3,4,10,15,16,22], ...
    % Day 14
    [3,4,10,15,16,22], ...
    % Day 15
    [15,16,22,3,4,10], ...
    % Day 16
    [3,4,10,15,16,22], ... 
    % Day 17
    [3,4,10,15,16,22], ...
    % Day 18
    [3,4,10,15,16,22], ...
    % Day 19
    [15,16,22,3,4,10], ...
    % Day 20
    [15,16,22,3,4,10], ...
    % Day 21
    [], ...
    % Day 22
    [], ...
    % Day 23
    [15,16,22,3,4,10], ...
    % Day 24
    [], ...
    % Day 25
    [], ...
    % Day 26
    [15,16,22,3,4,10], ...
    % Day 27
    [15,16,22,3,4,10], ...
    % Day 28
    [15,16,22,3,4,10], ...
    % Day 29
    [], ...
    % Day 30
    [], ...
    % Day 31
    [], ...
    % Day 32
    [], ...
    % Day 33
    [], ...
    % Day 34
    [], ...
    % Day 35
    [], ...
    % Day 36
    [], ...
    % Day 37
    [], ...
    % Day 38
    [], ...
    % Day 39
    [], ...
    % Day 40
    []
    },...   
};

raws = num2cell(Raw{id}{Day});
[rawAccBrush,rawQuaBrush,rawMagBrush,rawAccHead,...
    rawQuaHead,rawMagHead]  = deal(raws{:});

end

