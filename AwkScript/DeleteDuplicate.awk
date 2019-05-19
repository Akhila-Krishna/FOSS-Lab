#Write an awk script to delete duplicated line from a text file. The order of the original
#lines must remain unchanged

BEGIN {i=1}
{
flag=1;
for(j=1;j<i && flag ; j++)
{
        if(x[j]==$0)
        flag=0;
}
if(flag)
{
        x[j]=$o;
        printf("\n%s",x[i]);
        i++;
}
}
