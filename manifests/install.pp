class apache::install {
 notify {"Running install":}
   package{"$apache::install_name":
     ensure => present 
  }
}
