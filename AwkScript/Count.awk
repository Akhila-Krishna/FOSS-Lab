#Write an awk script to find out total number of books sold in each discipline as well as
#total book sold based on the given table
#electrical 34
#mechanical 67
#electrical 80
#computers 43
#mechanical 65
#civil 198
#computers 64

#!/usr/bin/awk -f

{
  arr[$1]+=$2;
  total+=$2;
}

END{
    for (i in arr){
        print i " = " arr[i];
    }
    print "Total = " total
}
