use strict;
use 5.10.1;
use Data::Dumper;
use warnings;
use lib '/Users/c16143a/work/some_code_of_mine/';
use mtools qw(ls_dir);

# Lessons 
    # Variables
    # Arrays push pop shift unshift
    # Hash
    # if conditions
    # Loops Foreach while for 
    # ReadWrite from file to file 
    # Regex substitute   s/asd/asd/;
    # References

 my $name = 'Ivan     Ivanoooov';

# regex
# character type
# . = match everything
# \d = digit
# \s = space
# \w = word
# [a-h1-9] = grouping chars 
# # lenght
# # * zero or more
# # + one or more
# # %
#
# .*?
 
#if ($name =~ /(Ivan).*?(o+)(v)/ ) {
if ($name =~ /(Ivan(\s+\w{7}))/ ) {
   say "[$1][$2]";
}

    #die
    exit 0;

my %name_surname;

$name_surname{'Ivan'} = 'Ivanov';
$name_surname{'Ivan'} = 'Ivanov2';
$name_surname{'Dragan'} = 'Ivanov';


say Dumper \%name_surname;

if (exists $name_surname{Ivan} ) {
    say "Found";
    say $name_surname{Ivan};
}







