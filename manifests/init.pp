class apache (
   String $vhost_dir,
   String $install_name,
   String $service_name,
   Array $config_paths
){
   contain apache::install
   contain apache::config
   contain apache::service

   Class['::apache::install']
   -> Class['::apache::config']
   ~> Class['::apache::service']
}
