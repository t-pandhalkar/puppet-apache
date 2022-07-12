define apache::dissite (
  String $vhost_file = '000-default.conf',
) {
 notify {"Running dissite":}
  if $facts['os']['family'] == "Debian" {
     exec {"a2dissite ${vhost_file}":
      onlyif => "test -f /etc/apache2/sites-available/${vhost_file}",	
      path => ['/usr/bin', '/usr/sbin', '/bin', '/sbin'],
      notify => Service["$apache::service_name"] 
     }
  }    
}
