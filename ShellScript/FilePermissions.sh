#Q:Write a shell script that accepts two filenames as arguments, checks if
#the permissions for these files are identical and if the permissions are
#identical, output common permissions otherwise output each filename
#followed by its permissions.

#!bin/bash
if [ $# -ne 2 ]
then
	echo "\nEnter 2 files as arguments.\n"
	exit
fi
if [ ! -f $1 ]
then
	if [ ! -f $2 ]
	then
		echo "\nEnter valid files.\n"
		exit
	fi
fi
PERMS1=`ls -lah $1 | awk -F " " '{print $1}'`
PERMS2=`ls -lah $2 | awk -F " " '{print $1}'`
if [ "$PERMS1" = "$PERMS2" ]
then
	echo "\nFile permissions are equal and is : $PERMS1\n"
else
	echo "\nPermissions for $1 is : $PERMS1"
	echo "\nPermissions for $2 is : $PERMS2\n"
fi
