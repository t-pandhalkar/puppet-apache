class apache::v_host(
  Array $sub_domains,
) {

  notify {"Running v_host":}

  $sub_domains.each | String $sub_domain |{
    apache::vhost {"$sub_domain":
      root => "$sub_domain"
    }
    apache::ensite {"$sub_domain":
      vhost_file => '000-default.conf',
      require => Apache::Vhost["$sub_domain"]
    } 
    apache::dissite {"$sub_domain":
      vhost_file => '000-default.conf',
      require => Apache::Vhost["$sub_domain"]
    } 
  }  
}
