#Create a text file and answer the following queries :
#a) Search for the pattern ‘apple’ in the file and display the number of occurences.
#b) Count the number of words that ends with ‘e’
#c) Count the number of words that starts with ‘ap’
#d) Search for words containing ‘a’ or ‘s’
#e) Search for words containing zero or more occurrence of ‘e’
#f) Search for words containing one or more occurrence of ‘e’
#g) Search for words containing the letters ‘l’ and ‘m’, with any number of characters in
#between

open(DATA, "<test") or die "Couldn't open file, $!";
@c =(0,0,0,0,0,0,0);
while(<DATA>) {
for $w(split)
{
if($w=~/apple/){ $c[0]=$c[0]+1;}
if($w=~/e$/){ $c[1]=$c[1]+1;}
if($w=~/^ap/){ $c[2]=$c[2]+1;}

if($w=~/[as]/){ $c[3]=$c[3]+1;}
if($w=~/e*/){ $c[4]=$c[4]+1;}
if($w=~/e+/){ $c[5]=$c[5]+1;}
# if($w=~/l/ && $w=~/m/){ $c[6]=$c[6]+1;}
if($w=~/l.*m/){ $c[6]=$c[6]+1;}
}
}
print "Number of 'apple': $c[0] \n";
print "Number of words ending with 'e': $c[1] \n";
print "Number of words starting with 'ap': $c[2] \n";
print "Number of words containing 'a' or 's': $c[3] \n";
print "Number of words containing zero or more number of 'e': $c[4] \n";
print "Number of words containing one or more number of 'e': $c[5] \n";
print "Number of words containing 'l' and 'm': $c[6] \n";
close(DATA);
