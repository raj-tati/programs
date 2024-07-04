use v5.38;
use feature qw(class);
no warnings "experimental::class";

class Stack {
	my $stack = [];
	
	method isEmpty()    { return(scalar(@{$stack}) == 0); }
	method push($value) { unshift(@{$stack}, $value); }
	method pop()        { return shift(@{$stack}); }
	method peek()       { return $stack->[0]; }
	method size()       { return scalar(@{$stack}); }
}

class Queue {
	my $queue = [];

	method isEmpty() 	   { return(scalar(@{$queue} == 0)); }
	method enQueue($value) { unshift(@{$queue}, $value); }
	method deQueue         { return shift(@{$queue}); }
	method peek()          { return $queue->[0]; }
	method size()		   { return scalar(@{$queue}); }
}

## Testing DSA
sub main {
	my $stackObject = Stack->new();
	$stackObject->push(5);
	print($stackObject->pop()) if(!$stackObject->isEmpty());

	my $queueObject = Queue->new();
	$queueObject->enQueue(10);
	print($queueObject->deQueue()) if(!$queueObject->isEmpty());
} main();
