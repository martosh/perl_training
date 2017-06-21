use strict;
use 5.10.1;
use Data::Dumper;
use warnings;

# What we know already
    # Variables
    # Arrays push pop shift unshift
    # Hash
    # if conditions
    # Loops
    # ReadWrite files 
    # Regex 
    # subroutines 
#

my $variable = 'teetasd    as';
my $result = &format($variable); 
say $result;


######################
sub format {
######################
     my $variable_to_format = shift @_;
     $variable_to_format =~ s/\s+//g;
     return $variable_to_format;
}


