use strict;
use warnings;
use inc::Module::Install '0.92';

name         ('Carp-POE');
perl_version ('5.006');
author       ('Hinrik Örn Sigurðsson <hinrik.sig@gmail.com>');
abstract_from('lib/Carp/POE.pm');
version_from ('lib/Carp/POE.pm');
license      ('perl');
homepage     ('http://search.cpan.org/dist/Carp-POE');
bugtracker   ('http://github.com/hinrik/carp-poe/issues');
githubmeta   ();
resources    (Ratings => 'http://cpanratings.perl.org/d/Carp-POE');

requires     ('Exporter'   => '0');
requires     ('Carp'       => '0');
requires     ('POE'        => '0');
test_requires('Test::More' => '0');
test_requires('Test::Warn' => '0.20');
tests_recursive();

WriteAll();
