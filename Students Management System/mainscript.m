clc
clear
table1=[];
table2=[];
table3=[];
w=1;
while w~=10
    clc
    mainmenu
    w=input('Enter the number of operation: ');
    if w==1
        table1=step1(table1);
    elseif w==2
        table2=step2(table2);
    elseif w==3
        table3=step3(table3);
    elseif w==4
        [table1,table2,table3]=step4(table1,table2,table3);
    elseif w==5
        step5(table1,table2,table3)
    elseif w==6
        step6(table1,table2,table3)
    elseif w==7
        step7(table1,table2,table3)
    elseif w==8
        step8(table1,table2,table3)
    elseif w==9
        step9(table1,table3)
    elseif w==10
        break
    end
end
