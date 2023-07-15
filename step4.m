function [table1,table2,table3]=step4(table1,table2,table3)
fprintf('\nChoose the table you want to load\n')
fprintf('1.Table of courses\n2.Table of Students''GPAs\n3.Table of Current semester grades\n')
x=input('Enter the number of table to be loaded: ');
y=input('Enter the table name: ','s');
if x==1
    table1=xlsread(y);
elseif x==2
    table2=xlsread(y);
elseif x==3
    table3=xlsread(y);
end
end
