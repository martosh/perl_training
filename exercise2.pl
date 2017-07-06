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
    # Loops
    # ReadWrite
    # Regex substitute
    # References

# Take all files sizes and return the biggest
my $find_in_dir = '/Users/c16143a/work';

&biggest_size($find_in_dir);


#########################
# Takes directory as param and returns the biggest file from that dir
#
sub biggest_size {
    my $dir = shift @_;
    my %files_size;

    my @files = ls_dir( $dir, "\.txt", 1 );
    say Dumper \@files; 
     
    for my $filename (@files) {
        
       my $size = -s $filename;
       $files_size{$filename} = $size;
    }

        say Dumper \%files_size;

#say $size;

}







    
