use ExtUtils::MakeMaker;
use strict;

WriteMakefile (
    NAME            => 'Log::Message',
    VERSION_FROM    => 'lib/Log/Message.pm', # finds $VERSION
    dist            => { COMPRESS => 'gzip -9f', SUFFIX => 'gz' },
    PREREQ_PM       => {    'Test::More'                => 0, 
                            'Params::Check'             => 0, 
                            'Module::Load'              => 0,
                            'File::Spec'                => 0,   
                            'Locale::Maketext::Simple', => 0,     
                    },
    INSTALLDIRS     => ( $] >= 5.009005 ? 'perl' : 'site' ),
    AUTHOR          => 'Jos Boumans <kane[at]cpan.org>',
    ABSTRACT        => 'Powerful and flexible message logging mechanism',
);   
