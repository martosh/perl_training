use strict;
use 5.10.1;
use Data::Dumper;
use warnings;

# Exercise 
    # Variables
    # Arrays push pop shift unshift
    # Hash
    # if conditions
    # Loops
    # ReadWrite
    # Regex substitute
# Let everyone to say what is clear and what is not so clear
# Mentioning subroutines hash keys function;
    
my $var = "asdasd";
my $letter = 'h';
my $gw = '192.168.1.1';

my @names = ( 'a' .. 'z' ); 
                #key           # value
                #
my %ip_addresses;
$ip_addresses{'192.168.0.1'} = 'gate';
$ip_addresses{'192.168.0.2'} = 'gate2';

reverse %ip_address;

say Dumper \%ip_addresses;

say $ip_addresses{'192.168.0.1'};

#say $var;
#my @formated_names;

#for my $name (@names) {
#    $name =~ s/\s+.*//;
#    push @formated_names, $name;
#    
#}
#
#say Dumper \@formated_names;
#
############################
#sub format {
#    #show me parameters
#     say Dumper \@_;
#     my $variable_to_format = $_[0];
#     say "variable[$variable_to_format]";
#    
#}

