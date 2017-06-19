use strict;
use 5.10.1;
use Data::Dumper;
use File::Slurp;

#perldoc sintaxis open FILEHANDLE,MODE,EXPR

my $filename = 'data.txt';
# content of data.txt
# Gosho
# Tosho
# Joro

#open(my $fh, '<', $filename) #works as well but it's good to be more specific with the encoding
open(my $fh, '<:encoding(UTF-8)', $filename)
    or die "Could not open file '$filename' [$!]";

# remember that when we use strict we need to declare all data with my
my @names; 

# looping over filehandler line by line
while (my $row = <$fh>) {
    # row must be chomped as well like with <STDIN> input 
    chomp $row;
    # fill @names array with row 
    push @names, $row;
}

#remember to close file handelers
close $fh or die "Cannot close fh with file[$filename]"; 

# Let us print the array filled with names
say Dumper \@names;

########################
#Writing in file 
########################

# plese not >> and > are different cases '>>' is used to append
open(my $wr_fh, '>>', 'numbers.txt')
  or die "Could not open file 'numbers.txt' std_err[$!]";

# define array with numbers from 1 until 100 
my @numbers = ( 1 .. 100);

#cycle them and print them in some file 
for my $number ( @numbers) {
    print $wr_fh "$number\n";
}

###########################################
####### Other ways for reading file #######
###########################################
# use File::Slurp module 
my @lines = read_file($filename);
say Dumper \@lines;


########################
# LOOP LABELS
########################

# according to Damian Conway's book Perl best practice, we need to use Labels all the time
LINE: foreach my $line (@lines ) {
    chop($line);
    say $line;
    last;
}

#################### Basic Regular Expressions ##################
my $name = 'Iwan    Ivanov ';
# \s - space sign
# \d - digit 
# \w - word
# .  - any character
# *  - zero or more signs
# +  - one or more signs
# Examples:
# \s* - zero or more spaces
# \d+ - one or more digits
# \w* - zero words or more
# ()  - Caches what we desire
# (\w+) - Caches one or more word chars
my @names;
# use regex in if to aboid bugs with caching variables $1;

# using regex without if 
'asdasd' =~ /(asd)/;
say "show me [$1]";

$name =~ /(\d+)\s+(\w+)/;
say "There is searched char[$1] second[$2] in name[$name]";
push @names, $2;

