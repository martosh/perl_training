# Remember use statemet includes a libraly in the script
use 5.10.1;

# Data::Dumper is useful for debuging arrays and hashes
use Data::Dumper;
use warnings;

###############################
# More for arrays
###############################
@a = ( 1 .. 10 );
@b = ( 'a' .. 'z' );

# merging two or more arrays in another
# way number one
@c = ( @a, @b );

# the line bellow works as well for merging
#push @c, @a, @b;
# show me result of merged array;
say Dumper \@c;

@names = ( 'Ivan', 'Dragan' );
$other_name = 'Stoyan';
say "Before[@names]";

# to add element in array use push
push @names, $other_name;
say "Show me the array element [$names[1]]";

#for taking element from array use shift or pop
$some_other_name = pop @names;
say "Show me array After ALL interventions [@names]";

# define more variables at once using () 
( $digit1, $digit2 ) = ('123', '123123');
say "digit1[$digit1] digit2[$digit2]";

##################################
# Hashes
##################################

#defining Hash can be done with % sign for example:
%name_Surname;
##Key -> Value
# remember that adding keys and values in hash works with dollar sign $ not %
# hash keys (Ivan, Gosho... ) must be uniq
$name_Surname{ 'Ivan' }  = 'Ivanov';
$name_Surname{ 'Gosho' } = 'Ivanov';
$name_Surname{ 'Ivan' }  = 'Stoyanov';

# using variables to be assigned as hash key and value pair
$some_name                  = 'Yordan';
$some_surname               = 'Velichkov';
$name_Surname{ $some_name } = $some_surname . '123123';

# Reverse function works on strings and hashes
$some_name    = reverse $some_name;
%reverce_hash = reverse %name_Surname;

say Dumper \%reverce_hash;

#################################
# If statement with  > conditions
#################################

if ( 3 > 2 ) {
    say "3 is greater that 2";
}

# If statements with simple conditions of regex
say "Please give me your age";
$age = <STDIN>;
chomp $age;

if ( $age =~ /^\d+$/ ) {
    #execute statements;
    say "Your age[$age] is correct!";
} else {
    say "Wrong age please try again!";
}

