#Write an awk script to compute gross salary of an employee accordingly to rule given
#below : If basic salary < 10000 then DA = 45% of the basic and HRA =15% of basic If basic
#salary >= 10000 then DA =50% of the basic and HRA =20% of basic.

BEGIN{
print "Enter the salary"
getline < "/dev/tty"
if($1<10000)
{
	DA=$1 *0.45;
	HRA=$1 *0.15;
}
else
{
	DA=$1 *0.50;
	HRA=$1 *0.20;
}
print "\n"
print "DA is " DA
print "HRA is " HRA
}
