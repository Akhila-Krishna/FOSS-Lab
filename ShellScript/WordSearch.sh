#Q:Write a shell script to delete all lines containing a specific word in one
#or more file supplied as argument to it.

#!bin/bash
if [ $# -eq 0 ]
then
	echo "Enter file as argument."
	exit
fi
echo "Enter word to be searched."
read word
for file in $*
do
	sed "/$word/d" $file > temp
	mv temp $file
done

