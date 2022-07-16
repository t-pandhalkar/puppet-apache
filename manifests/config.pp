class apache::config {
  notify {"Running connfig":}
  $apache::config_paths.each | String $config_path |{

  file {"$config_path":
     ensure => directory
  }
 }
}
