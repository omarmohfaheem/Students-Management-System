function step6(table1,table2,table3)
fprintf('\nChoose the table you want to display\n')
fprintf('1.Table of courses\n2.Table of Students''GPAs\n3.Table of Current semester grades\n')
x=input('Enter the number of table you want to display: ');
if x==1
    fprintf('%10s%25s%12s\n','Course ID','Number of credit hours','Max Grade')
    for i=1:size(table1)
        fprintf('%8d%20d%15d\n',table1(i,1),table1(i,2),table1(i,3))
    end
elseif x==2
    fprintf('%10s%25s%35s\n','Student ID','Old Cumulative GPA','Number of completed credit hours')
    for i=1:size(table2)
        fprintf('%8d%20.1f%28d\n',table2(i,1),table2(i,2),table2(i,3))
    end
elseif x==3
    fprintf('%10s%12s%19s%19s\n','Student ID','Course ID','Coursework grade','Final exam grade')
    for i=1:size(table3)
        fprintf('%8d%12d%12d%19d\n',table3(i,1),table3(i,2),table3(i,3),table3(i,4))
    end

end
k=input('Press 1 to return to main menu: ');
end

