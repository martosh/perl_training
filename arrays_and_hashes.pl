# defining Hash can be done with %<some_name> for example:
use 5.10.1;
use Data::Dumper;

@a = (1 .. 10);
@b = (a .. z);
@c = (@a, @b);
#push @c, @a, @b;
say Dumper \@c;

#$name1 = 'tosho';
#$name2 = 'gosho';
#
#%name_Surname;
#$name_Surname{'Ivan'} = 'Ivanov';
#$name_Surname{'Gosho'} = 'Ivanov';
#$name_Surname{'Ivan'} = 'Stoyanov';
#$some_name = 'Yordan';
#$some_surname = 'Velichkov';
#$some_name = reverse $some_name;
#
#$name_Surname{ $some_name   } = $some_surname . '123123';
#
#
#@names = ('1', '2');
#$other_name = '3';
##say "Before[@names]";
#
#push @names, $other_name;
#say  $names[1];
## for taking element from array use shift and pop 
#$some_other_name = pop @names;
##say "After ALL[@names]";
#
#(#$digit1, $digit2) = '123', '123123';
say "Please give me your age";
$age = <STDIN>;
if ($age =~ /^\d+$/  ) {
     #execute statements;
     print "Yeah I am super math specialist";

}
#
#
#
##Key -> Value
#
##take a look that print function wont print the hash like arrays;
##say Dumper \%name_Surname;
#
