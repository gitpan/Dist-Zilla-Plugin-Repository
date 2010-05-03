
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::Plugin::Repository',
                       'DISTNAME' => 'Dist-Zilla-Plugin-Repository',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Fayland Lam <fayland@gmail.com>, Ricardo SIGNES <rjbs@cpan.org>, Moritz Onken <onken@netcubed.de>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Automatically sets repository URL from svn/svk/Git checkout for Dist::Zilla',
                       'EXE_FILES' => [],
                       'VERSION' => '0.12',
                       'PREREQ_PM' => {
                                        'Dist::Zilla' => '1.007'
                                      },
                       'LICENSE' => 'perl'
                     );


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM}; 
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod}; 
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



