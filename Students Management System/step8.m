function step8(table1,table2,table3)
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
int q=1;
for i=1:c
    for j=1:counter(c)
        studentid(q)=table2(i,1);
        q=q+1;
    end
end
sumgpa(c)=0;
newcredithour(c)=0;
[r,p]=size(studentid);
for i=1:c
    for j=1:p
        if table2(i,1)==studentid(j)
            for k=1:a
                if table1(k,1)==course(j)
                    newcredithour(i)=newcredithour(i)+table1(k,2);
                    sumgpa(i)=(gpa(j)*table1(k,2))+sumgpa(i);
                end
            end
        end
    end
end
for i=1:c
    secondtermgpa(i)=sumgpa(i)/newcredithour(i);
    newgpa(i)=(table2(i,2)+secondtermgpa(i))/2;
    completedcredithours(i)=newcredithour(i)+table2(i,3);
end
table8(:,1)=table2(:,1);
table8(:,2)=table2(:,2);
table8(:,3)=table2(:,3);
table8(:,4)=newgpa;
table8(:,5)=completedcredithours;
[r,c]=size(table8);
disp('1.Display New cumulative GPA table')
disp('2.Save New cumulative GPA table as an excel')
x=input('Enter your option: ');
if x==1
    fprintf('%10s%20s%40s%20s%40s\n','Student ID','Old cumulative GPA','Old number of completed credit hours','New cumulative GPA','New number of completed credit hours')
    for i=1:r
        fprintf('%7d%16.2f%26d%37.2f%32d\n',table8(i,1),table8(i,2),table8(i,3),table8(i,4),table8(i,5))
    end
elseif x==2
    h={'Student ID','Old cumulative GPA','Old number of completed credit hours','New cumulative GPA','New number of completed credit hours'};
    y=input('Enter new file name for New cumulative GPA Table: ','s');
    xlswrite(y,h,'file8','A1')
    xlswrite(y,table8,'file8','A2')
end
k=input('Press 1 to return to main menu: ');
end










