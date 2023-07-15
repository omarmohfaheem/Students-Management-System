function step5(table1,table2,table3)
fprintf('\nChoose the table you want to save\n')
fprintf('1.Table of courses\n2.Table of Students''GPAs\n3.Table of Current semester grades\n')
x=input('Enter number of table you want to save to the excel file: ');
y=input('Enter the new file name: ','s');
if x==1
    h={'Course ID','Credit Hours','Max Grade'};
    xlswrite(y,h,'file1','A1')
    xlswrite(y,table1,'file1','A2')
elseif x==2
    h={'Student ID','Old GPA','Completed Credit Hours'};
    xlswrite(y,h,'file2','A1')
    xlswrite(y,table2,'file2','A2')
elseif x==3
    h={'Student ID','Course ID','Coursework Grade','Final Exam Grade'};
    xlswrite(y,h,'file3','A1')
    xlswrite(y,table3,'file3','A2')
end
end
