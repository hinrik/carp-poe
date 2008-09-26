use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Carp::POE',
    AUTHOR        => 'Hinrik Örn Sigurðsson <hinrik.sig@gmail.com>',
    VERSION_FROM  => 'lib/Carp/POE.pm',
    ABSTRACT_FROM => 'lib/Carp/POE.pm',
    LICENSE       => 'perl',
    PREREQ_PM     => {
        'Exporter'      => '0',
        'Carp'          => '0',
        'POE'           => '0',
        'Test::More'    => '0',
        'Test::Warn'    => '0.11',
    }
);
