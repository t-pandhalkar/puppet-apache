define apache::vhost (
  String[1] $root 
)
{
 file {"/var/www/${root}":
    ensure => directory
 }

 $config_params = {
    'root' => $root,
 }

 file{"${apache::vhost_dir}000-default.conf":
    content => epp('apache/vhost.yaml.epp', $config_params)
 }

 file{"/var/www/${root}/index.html":
    ensure => present,
    content => epp('apache/index.yaml.epp', $config_params),
    require => File["/var/www/${root}"]
 }

}

