BEGIN{
FS="|"
print"\nslno\tdepartment\t\tsold"
}

{
book[$1]+=$2
total+=$2
}
END{
for(i in book){
SN++
{
printf("\n%d\t%-20s\t%d",SN,i,book[i]);
}
}
printf("\n---------------------------");
printf("\nTotal book sold:%d\n",total);
}

