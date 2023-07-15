function step7(table1,table2,table3)
[a,b]=size(table1);
[c,d]=size(table2);
[e,f]=size(table3);
k=1;
counter(c)=0;
for i=1:c
    for j=1:e
        if table3(j,1)==table2(i,1)
            counter(i)=counter(i)+1;
            course(k)=table3(j,2);
            gpa(k)=table3(j,3)+table3(j,4);
            for z=1:a
                if course(k)==table1(z,1)
                    gpa(k)=(gpa(k)/table1(z,3))*4;
                end
            end
            k=k+1;
        end
    end
end
q=1;
for i=1:c
    for j=1:counter(c)
        studentid(q)=table2(i,1);
        q=q+1;
    end
end
table7(:,1)=studentid;
table7(:,2)=course;
table7(:,3)=gpa;
[r,c]=size(table7);
disp('1.Display GPA table')
disp('2.Save GPA table as an excel file')
x=input('Enter your option: ');
if x==1
    fprintf('%10s%12s%17s\n','Student ID','Course ID','Student''s grade')
    for i=1:r
        fprintf('%8d%10d%17.2f\n',table7(i,1),table7(i,2),table7(i,3))
    end
elseif x==2
    h={'Student ID','Course ID','Student''s grade'};
    y=input('Enter new file name for GPA Table: ','s');
    xlswrite(y,h,'file7','A1')
    xlswrite(y,table7,'file7','A2')
end
k=input('Press 1 to return to main menu: ');
end




