function table1=step1(table1)
clc
o=0;
while o==0
    [r,c]=size(table1);
    table1(r+1,1)=input('Enter Course ID: ');
    table1(r+1,2)=input('Enter number of credit hours: ');
    table1(r+1,3)=input('Enter max grade of the subject: ');
    o=input('If you want to add a new row Press 0 and to return back to main menu Press 1: ');
end
end

