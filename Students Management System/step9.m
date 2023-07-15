function step9(table1,table3)
[a,b]=size(table1);
[c,d]=size(table3);
counter(a)=0;
for i=1:a
    for j=1:c
        if table1(i,1)==table3(j,2)
            counter(i)=counter(i)+1;
        end
    end
end
table9(:,1)=table1(:,1);
table9(:,2)=counter;
[r,c]=size(table9);
disp('1.Display Course registration table')
disp('2.Save Registration table as an excel')
x=input('Enter your option: ');
if x==1
    fprintf('%s%38s\n','Course ID','Total number of registered students')
    for i=1:r
        fprintf('%d%23d\n',table9(i,1),table9(i,2))
    end
elseif x==2
    h={'Course ID','Total number of registered students'};
    y=input('Enter new file name for Registration Table: ','s');
    xlswrite(y,h,'file9','A1')
    xlswrite(y,table9,'file9','A2')
end
k=input('Press 1 to return to main menu: ');
end




