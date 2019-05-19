#Q: Write a shell script that will take an input file and remove identical Olines.

#!bin/bash
if [ $# -ne 1 ]
then
	echo "Enter a file name."
	exit
fi
if [ ! -f $1 ]
then
        echo "Enter a valid file name."
        exit
fi
awk '! a [$0] ++' $1 >> temp
rm $1
mv temp $1

