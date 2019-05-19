#Q:Write a shell script that displays a list of all the files in the current
#directory to which the user has read, write and execute permissions.

#!bin/bash
echo "Files having read,write and execute permissions."
for file in *
do
	if [ -r $file -a -w $file -a -x $file ]
	then
		echo $file
	fi
done


