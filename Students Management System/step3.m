function table3=step3(table3)
clc
o=0;
while o==0
    [r,c]=size(table3);
    table3(r+1,1)=input('Enter Student ID: ');
    table3(r+1,2)=input('Enter Course ID: ');
    table3(r+1,3)=input('Enter coursework grade: ');
    table3(r+1,4)=input('Enter final exam grade: ');
    o=input('If you want to add a new row Press 0 and to return back to main menu Press 1: ');
end
end

