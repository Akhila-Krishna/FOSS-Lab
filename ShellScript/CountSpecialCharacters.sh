#Q:Write a shell script that, given a file name as the argument will count vowels, blank spaces, characters, number of lines and symbols.

#!bin/bash
if [ $# -ne 1 ]
then
	echo "Enter file as argument."
	exit
fi
if [ ! -f $1 ]
then
	echo "Enter valid file."
	exit
fi
s=0
space=`grep -o ' ' $1 | wc -l`
character=`wc -c $1 | awk '{print $1}'`
vowel=0
line=`wc -l $1 | awk '{print $1}'`
while read -n1 c
do
	if [[ $c == *['!'@#\$%^\&*()_+]* ]]
	then
		((s++))
	elif [[ $c == *[aAeEiIoOuU]* ]]
	then
		((vowel++))
	fi
done < "$1"
echo "The number of:"
echo "	Lines : $line"
echo "	Vowels : $vowel"
echo "	Characters : $character"
echo "	Spaces : $space"
echo "	Symbols : $s"

