#Q:Write a shell script that displays a special listing showing the permissions, size, filename and last modification time of filename supplied as arguments. Provide suitable headers using the printf command.

#!/bin/bash
if [ $# -eq 0 ]
then
	echo "\nNo file specified as arguments.\n"
	exit
fi
for file in $*
do
	if [ ! -f $file ]
	then
		echo "\nNo such file found in the directory.\n"
		exit
	fi
done
for file in $*
do
	NAME=`basename $file`
	PERMS=`ls -lah $file | awk -F " " '{print $1}'`
	SIZE=`ls -lah $file | awk -F " " '{print $5}'`
	DATE=`ls -lah $file | awk -F " " '{print $6 " " $7 " " $8}'`
	printf "\n The name of the fle is : $NAME\n Last Modified : $DATE"
	printf "\n Permission are : $PERMS\n The size is $SIZE\n\n"
done
