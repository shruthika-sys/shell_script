#Write a shell script that accepts filename as argument and display its creation time if file
#exist and if does not send output error message.
for i in $*
do 
if [ -f $i ]
then 
echo "--------------$i contents are------------"
cat $i | tr "[a-z]" "[A-Z]"
echo "-------------------------------------------"
else
echo " $i file doesnot exit"
fi
done 
