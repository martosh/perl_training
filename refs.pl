use strict;
use 5.10.1;
use Data::Dumper;
use warnings;

#Fuctions can be called from everywere

my @letters = ( 'a' .. 'h' );
&print_array(@letters);

#####################
sub print_array {
#####################
    my @array_params = @_;

    for my $letter (@array_params) {
        say "Letter[$letter]";
        my $changed = &change($letter);
#                      &change2($lettet);
        say "Changed[$changed]"; 
    }
}
#####################
sub change {
#####################
    my $letter = shift;
    $letter++;
# BAD PRACTICE &change2($lettet);
    return $letter;
}
##################
# REFS
##################
my $code = sub {
    

};

#array ref
my $array_ref = \@letters;
say $array_ref;
say "Show me array ref";
say "@{$array_ref}";

my $asd = \@letters;
if (ref $asd ) {
    
} 

# string ref
my $string = 'Something...';
my $string_ref = \$string;
say "Show me string ref";
say ${$string_ref};
say $$string_ref;

# hash ref
my %hash = {};
$hash{Gosho} = 'Goshev';
my $hash_ref = \%hash;

say "Show me hash ref";
say Dumper $hash_ref;

my $array_r = [];
my $hash_r = {};

my $ref = [ {}, {a=>1, b=>2 }, [{}, {} ], [] ];
say $ref->[2]->{a};
say Dumper $ref;


