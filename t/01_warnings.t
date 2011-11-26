use strict;
use warnings FATAL => 'all';
use Carp::POE;
use POE;
use Test::More tests => 2;
use Test::Warn;

POE::Session->create(
    package_states => [
        main => [qw( _start first_event second_event third_event)]
    ],
);

warnings_like { $poe_kernel->run }
[ qr/^Second.*line 22$/, qr/^Third.*line 23$/ ],
'Yielded warnings';

sub _start {
    my ($kernel, $session) = @_[KERNEL, SESSION];
    warnings_like { $kernel->call($session, 'first_event') }
    [ qr/^First.*line 20$/ ], 'Called warning';
    $kernel->yield('second_event');
    $kernel->yield('third_event');
}

sub first_event {
    carp 'First';
}

sub second_event {
    carp 'Second';
}

sub third_event {
    carp 'Third';
}
