class apache::service {
 notify {"Running service":}
   service {"$apache::service_name":
     ensure => running 
  }
}
