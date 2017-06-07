
# $variable must start with '$' symbol and must be one line
 $testing_variable;

# difference between "" and '' 
# with "" special caracter sequence like the following: 
#  \a   Alert/alarm/bell
#  \b   Backspace
#  \D   A non-digit
#  \e   ESC character
#  \f   Form feed
#  \n   Newline character
#  \r   Carriage return
#  \cC  <Ctrl>C
#  \t   Tab

# '' takes everything literally 
#example with ""
$hello_world = "Hello World\n";
print $hello_world;
#example with '' 
$hello_world = 'Hello World asdasdasd\n';
print $hello_world;

## difference between print and say
use 5.10.1;
say $hello_world;

#definitions of arrays
#empty
@array = ();

#simple definition
@array = ('name','age' );
# qw operator
@array = qw(name age sex);
# .. operator
@array = ( 1 .. 100);

# perl default external arguments array;
print "my array[@ARGV]";

# perl default keybord input;
say "Give me your name";
 $name = <>;
say "Give me your sex";
 $sex = <STDIN>;
say "your sex is [$sex]";
say "What is your name";
say "your input name is [$name]";

