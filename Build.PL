use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Bio::BioStudio::Basic',
    license             => 'bsd',
    dist_author         => q{Sarah Richardson <notadoctor@jhu.edu>},
    dist_version        => '1.02',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'perl' => 5.006,
        'Perl6::Slurp' => 0.03,
        'Config::Auto' => 0.38,
        'Text::Wrap' => 2009.0305,
        'Text::Diff' => 1.3,
        'Time::Format' => 1.11,
        'Digest::MD5' => 2.51,
        'URI::Escape' => 1.59,
        'DBI' => 1.616,
        'Bio::DB::SeqFeature::Store' => 0,
        'Bio::Seq' => 0,
        'Bio::SeqIO' => 0,
        'Bio::GeneDesign::Basic' => 0     
    },
    configure_requires => {
      'Module::Build' => 0.38
    },
    add_to_cleanup      => [ 'Bio::BioStudio-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
