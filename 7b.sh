for fn in $*
do
	if [ $fn = $1 ]
	then
		continue
	fi
done
for w in `cat $1`
do
	lc=`grep -oiw "$w" $fn | wc -l`
	echo "$w is $lc times in $fn"
done
