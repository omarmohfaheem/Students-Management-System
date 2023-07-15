function table2=step2(table2)
clc
o=0;
while o==0
    [r,c]=size(table2);
    table2(r+1,1)=input('Enter Student ID: ');
    table2(r+1,2)=input('Enter old cumulative GPA: ');
    table2(r+1,3)=input('Enter number of completed credit hours: ');
    o=input('If you want to add a new row Press 0 and to return back to main menu Press 1: ');
end
end

