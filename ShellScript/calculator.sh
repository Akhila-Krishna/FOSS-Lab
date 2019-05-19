

#!/bin/bash
clear
result=0
i="y"
echo " Enter the first number"
read n1
echo "Enter the second number"
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Modulus"
echo "Enter your choice"
read ch
case $ch in
    1)result=`expr $n1 + $n2`
    	 echo "Sum ="$result;;
    2)result=`expr $n1 - $n2`
     	 echo "Sub = "$result;;
    3)result=`expr $n1 \* $n2`
     	 echo "Mul = "$result;;
    4)result=`expr $n1 / $n2`
    	 echo "Div = "$result;;
    5)result=`expr $n1 % $n2`
	 echo "mod = "$result;;
    *)echo "Invalid choice";;
esac
echo "Do you want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done



