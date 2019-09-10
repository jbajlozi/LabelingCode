function [rawAccBrush, rawQuaBrush, rawMagBrush, rawAccHead, ...
    rawQuaHead, rawMagHead]  = Daytoraw(Day,id)

Raw = { 
    %nirmitP1, didnt have folder for sess38,39 or 40
    {[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22] ,[],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],...
    [3, 4, 10, 15, 16, 22],[15,16,22,3,4,10], [15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,26,22,3,4,10],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[],[],[]}, ... 
    %nicole no phone19 in sess16// used sess36new//no sess 39 
    {[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[15,16,22,3,4,10],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],...
    [3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],...
    [],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[3, 4, 10, 15, 16, 22],...
    [3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[15,16,22,3,4,10]},...
    %P3Matt,Day15shifteddown//usedday16(not day16(2)//day19noleftwrist//
    {[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[15,16,22,3,4,10],[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[11,12,18,23,24,30],[3, 4, 10, 15, 16, 22],[],[3, 4, 10, 15, 16, 22],[],...
    [3, 4, 10, 15, 16, 22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [15,16,22,3,4,10]},...
    %P4Lewis//usedday7new
    {[15,16,22,3,4,10],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[3,4,10,15,16,22],...
    [3,4,10,15,16,22],[3,4,10,15,16,23],[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[],[15,16,22,3,4,10],[],[],[],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[],[15,16,22,3,4,10],[15,16,22,3,4,10]},
    %P5Denise//day36(new)
    {[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],...
    [3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10]},
    %P6Niloufar
    {[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [3,4,10,15,16,22],[],[15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10]},
    %P7Nicoleusethis//only til day13
    {[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [],[],[15,16,22,3,4,10],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]},
    %P8Gracie//usedatabase(notdatabase2) 
    {[15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[],[],[],[15,16,22,3,4,10],[],[15,16,22,3,4,10],...
    [],[],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[]}, ... 
    %p9Hannah day8(1)//day10(notday10redo)//day11,12,14,16,17,19,20,22redo
    {[15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[],[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10]},
    %P10//day8shifted//day20replacement
    {[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[23,24,30,10,12,18],[3,4,10,15,16,22],...
    [15,16,22,3,4,10],[15,16,22,3,4,10],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[],[15,16,22,3,4,10],[3,4,10,15,16,22],...
    [],[15,16,22,3,4,10],[],[15,16,22,3,4,10],[],[],[],[],[],[],[],[],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[],[],[]},
    %P11Anika
    {[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [15,16,22,3,4,10],[],[],[3,4,10,15,16,22],[3,4,10,15,16,22],[],[],[15,16,22,3,4,10],[],[3,4,10,15,16,22],[15,16,22,3,4,10],[],[15,16,22,3,4,10],[],[],[],[],[],[],[],[],[],...
    [],[],[],[],[]},...
    %P12Amorette
    {[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],[15,16,22,3,4,10],...
    [3,4,10,15,16,22],[15,16,22,3,4,10],[15,16,22,3,4,10],[],[3,4,10,15,16,22],[],[3,4,10,15,16,22], [],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]},...   
};

raws = num2cell(Raw{id}{Day});
[rawAccBrush, rawQuaBrush, rawMagBrush, rawAccHead, ...
    rawQuaHead, rawMagHead]  = deal(raws{:});

end
