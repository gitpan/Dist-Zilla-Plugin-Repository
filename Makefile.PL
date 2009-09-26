
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Dist-Zilla-Plugin-Repository',
  NAME      => 'Dist::Zilla::Plugin::Repository',
  AUTHOR    => 'Fayland\ Lam\ \<fayland\@gmail\.com\>\,\ Ricardo\ SIGNES\ \<rjbs\@cpan\.org\>\,\ Moritz\ Onken\ \<onken\@netcubed\.de\>',
  ABSTRACT  => 'Automatically\ sets\ repository\ URL\ from\ svn\/svk\/Git\ checkout\ for\ Dist\:\:Zilla',
  VERSION   => '0.11',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Dist::Zilla" => '1.007',
  },
  test => {TESTS => 't/*.t'}
);

