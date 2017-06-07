
##$broken_line = "Broken line";
##print $broken_line;
#
## $variable with space does not works in the name
#
##  difference between "" and '' 
##  \n new line
#
## with "" special symbols like \n are working
#$hello_world = "Hello World\n";
#print $hello_world;
## with '' cpecial symbols does not work 
#$hello_world = 'Hello World asdasdasd';
#
#print $hello_world;
##
### difference between print and say

use 5.10.1;
#say $hello_world;
@array = ();
@array = qw(name age sex);
@array = ('name','age' );
@array = ( 1 .. 100);


print "my array[@ARGV]";

say "Give me your name";
 $name = <>;
say "Give me your sex";
 $sex = <>;
say "your sex is [$sex]";
say "your name is [$name]";

