use v5.38;
use feature "class";no warnings 'experimental::class';

class One {
    field $scalar :param;

    method className() { print "\nOne ", $scalar; }
    method inheritanceOne() { return Three->new()->className()}
}

class Three {
    method className() { print "\nThree"; }
}

class Two {
    method anotherClassName() { print "Two\n"; }
    method inheritance() { my $oneObject = One->new(scalar => 23);$oneObject->className() };
    method inheritanceTwo() { my $oneObject = One->new(scalar => 21);$oneObject->className(); return One->new(scalar => 10) };
}

my $twoObject = Two->new();
$twoObject->anotherClassName();
$twoObject->inheritance();
$twoObject->inheritanceTwo()->inheritanceOne();
