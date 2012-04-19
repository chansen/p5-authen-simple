use strict;
use Module::Build;

my $build = Module::Build->new(
    license            => 'perl',
    module_name        => 'Authen::Simple',
    requires           => {
        'Class::Accessor::Fast'    => 0,
        'Class::Data::Inheritable' => 0, 
        'Crypt::PasswdMD5'         => 0, # Authen::Simple::Password
        'Digest::MD5'              => 0, # Authen::Simple::Password
        'Digest::SHA'              => 0, # Authen::Simple::Password
        'MIME::Base64'             => 0, # Authen::Simple::Password
        'Params::Validate'         => 0,
        'Test::More'               => 0
    },
    create_makefile_pl => 'traditional',
    create_readme      => 1
);

$build->create_build_script;
