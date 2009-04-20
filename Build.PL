
use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
  module_name   => 'Dist::Zilla::Plugin::Repository',
  license       => 'perl',
  dist_abstract => "Automatically\ sets\ repository\ URL\ from\ svn\/svk\/Git\ checkout\ for\ Dist\:\:Zilla",
  dist_name     => "Dist\-Zilla\-Plugin\-Repository",
  dist_author   => [
"Fayland\ Lam\ \<fayland\@gmail\.com\>",
  ],
  requires      => {
    "Dist::Zilla" => '1.006',
  },
  script_files => [ qw() ],
);

$build->create_build_script;
