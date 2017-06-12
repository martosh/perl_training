use strict;
use 5.10.1;
use Data::Dumper;
use warnings;

# some linux commands, grep, cat, ls, cd, man, locate, find, cut, tail, head, tar mv, mkdir

# use strict pragmatic statement
#
my $name = 'Marto';
my $test; 
my @names = ( 'a'.. 'z');

if ($test == 'asdasd' ) {
    $test = '123123';
}
say $name;

#
if (defined($test) && $test == '123123' ) {
        say "The test variable is defined and also is equal to 123123 test[$test]";
}
#
if ($test || $test == '123123' ) { #
    say "$test";
}
#
say "This is my statement" if $test eq '123123';

$test ? say "This is my statement" : say "not defined";

# if conditions, || && > < == eq != ne >= <=
 
# loops for ( $i; $test == 10; $i++ );
#

#foreach while
for (@names) { # a .. z
   say $_;
   if ($_ eq 'v') {
        say "there is v in the array ";
   } else {
        say "This element[$_] in not v";
   }
}

my $counter;

while (  $counter <= 10 ) { 
    $counter++;
    say $counter;
}


