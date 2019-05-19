#Q:Write a shell script which receives two file names as arguments. It should check whether the two file contents are same or not. If they are same then second file should be deleted.

#!bin/bash
if [ $# -ne 2 ]
then
	echo "Enter two files as arguments."
	exit
fi
if [ ! -f $1 ]
then
	echo "\nEnter valid files.\n"
	exit
fi
if [ ! -f $2 ]
then
        echo "\nEnter valid files.\n"
        exit
fi
( cmp -s $1 $2 ) && ( rm $2 ; echo "Deleted repeated files" ) || ( echo "Different files not deleted." )
