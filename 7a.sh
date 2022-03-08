#h=`date +%H`
h=$1
u=`whoami`
echo " user logged in terminal at: $h"
if [ $h -ge 4 ] && [ $h -lt 12 ]
then
echo -n "good morning $u"
elif [ $h -ge 12 ] && [ $h -lt 16 ]
then
echo -n "Good afternoon $u"
elif [ $h -ge 16 ] && [ $h -lt 19 ]
then
echo -n "Good Evening $u"
else
echo -n "good night $u"
fi
