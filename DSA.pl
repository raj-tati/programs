use v5.38;
use feature qw(class);
no warnings "experimental::class";

class Stack {
	my $array = [];
	
	method isEmpty()    { return(scalar(@{$array}) == 0); }
	method push($value) { unshift(@{$array}, $value); }
	method pop()        { return shift(@{$array}); }
	method peek()       { return $array->[0]; }
	method size()       { return scalar(@{$array}); }
}



## Testing DSA
sub main {
	my $stackObject = Stack->new();
	$stackObject->push(5);
	print($stackObject->pop()) if(!$stackObject->isEmpty);
} main();
