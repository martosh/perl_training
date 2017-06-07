# defining Hash can be done with %<some_name> for example:
use 5.10.1;
#%Names_Surname;
$name_Surname{'Ivan'} = 'Ivanov';
$name_Surname{'Gosho'} = 'Toshev';

use Data::Dumper;
#take a look that print function wont print the hash like arrays;
print "%name_Surname";
@a = 1 .. 10;
@b = a .. z;
