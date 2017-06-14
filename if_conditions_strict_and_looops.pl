use strict;
use 5.10.1;
use Data::Dumper;
use warnings;

# some well known linux commands, grep, cat, ls, cd, man, locate, find, cut, tail, head, tar mv, mkdir

# use strict pragmatic statement force you to declare the perl data structure my @data, my %hash, my $test , my ($variable1, $variable2);

my $name = 'Marto';
my $test;

# defines array with letter as elements
my @names = ('a' .. 'z');

if ($test == 'asdasd' ) {
    $test = '123123';
}

say $name;

# if conditions, || && > < == eq != ne >= <=
# If statement with more that one condition 

if (defined($test) && $test == '123123' ) {
        say "The test variable is defined and also is equal to 123123 test[$test]";
}
# If statment with two conditions with or
if ($test || $test == '123123' ) { 
    say "$test";
}

# one liner if, print me the statement if condition is true 
say "This is my statement" if $test eq '123123';

#ternare if else
$test ? say "This is my statement" : say "not defined";

# loops  
# C style for loop looks like this, very uncommon for perl  for ( $i; $test == 10; $i++ );

#foreach, we can use for as short, instead a foreach word 
for (@names) { # a .. z # for on forcheach will be same here
   say $_;
   if ($_ eq 'v') {
        say "there is v in the array ";
   }
}

my $counter;

# While condition is true execute the block
while (  $counter <= 10 ) { 
    $counter++;
    say $counter;
}


