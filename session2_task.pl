use Data::Dumper;
use 5.10.1;

say "Give me some name:";
chomp( $name1 = <STDIN>);
say "Give my your age:";
chomp( $age1 = <STDIN>);

 if ($age1 > 120) {
    $age1 = 'Unrealistic age value';
 }

say "Give me some name:";
chomp( $name2 = <STDIN>);
say "Give my your age:";
chomp( $age2 = <STDIN> );

 if ($age2 > 120) {
    $age2 = 'Not realistic input age';
 }
 
push @names, $name1, $name2;
push @ages, $age1, $age2;

$names_and_ages{ $name1} = $age1;
$names_and_ages{ $name2} = $age2;
chomp @ages;
chomp @names;
chomp %names_and_ages;
say Dumper \@names;
say Dumper \@ages;
say Dumper \%names_and_ages;

