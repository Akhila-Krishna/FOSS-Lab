#Q:Write a script that compares two directories dir1 and dir2(supplied as arguments) and copies to dir1 from dir2 every file that is not present in dir1.

#!bin/bash
if [ $# -ne 2 ]
then
	echo "\nEnter two directories as argumets\n"
	exit
fi
if [ ! -d $1 ]
then
	echo "\nEnter valid directories.\n"
	exit
fi
if [ ! -d $2 ]
then
	echo "\nEnter valid directories.\n"
	exit
fi
NAME2=`basement $2`
diff $1 $2 | grep -w "$NAME2" | awk -F ":" '{print $2}' >> temp
while read line
do
	cp "$2/$line" $1
done < temp
rm temp
