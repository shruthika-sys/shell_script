#Write an awkscript to compute gross salary of an employee accordingly to rule given
#below.
#If basic salary < 10000 then HRA=15% of basic & DA=45% of basic.
#If basic salary is >=1000 then HRA=20% of basic & DA=50% of basic.
BEGIN{
FS="|"
printf("----EMPLOYEES DETAIL-----\n");
print("\nslno\tEmpId\tname\t  \tDesignation    \tsalary  \tHRA  \tDA  \tGross");
printf("\n-------------------------------------------------------------------------------\n");
}

{
sno++
if($5<10000){
da=0.45*$5
hra=0.15*$5
}
else{
da=0.50*$5
hra=0.20*$5
}
gs=$5+da+hra
printf("\n%3d\t%4d\t%-20s\t%-10s\t%5d\t%5d\t%5d\t%5d",sno,$1,$2,$3,$5,hra,da,gs);
tbs+=$5
thra+=hra
tda+=da
tgross+=gs
}

END{
printf("-\n------------------------------------------------------------------------------------\n");
printf("\ntotalsalary:%d\n\tTotal DA:%d\n\tTotal HRA:%d\n\tTotal gross:%d\t\n",tbs,tda,thra,tgross);
print("\n---------------------------------------------------------------------------------------\n");
}


