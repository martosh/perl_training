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
    # subroutines for Today 


#my $names = 'asdasd';
#my @names = ( 'a' .. 'h' );
#say "[@names] before shift";
#say $names[11];
#my $shifted_name = shift (@names);
#say $names[0];
#my $shifted_name1 = shift @names;
#say $names[0];
#shift @names;
#
#push @names, 'a213123';
#
#say "[@names] after shift";
#
#
#exit 0;

#say $#names;
#say($names, '1', @names, 2); 


### SUBS ####
#sub say {
#    my @names = @_;
#    say Dumper \@names;
#}

my $variable = 'teetasd   as  a123';
my $result = &format($variable); 

######################
sub format {
######################
     my $variable_to_format = shift @_;
     say "before regex[$variable_to_format]"; 
     $variable_to_format =~ s/\s+//g;
     say $variable_to_format;
}
#

