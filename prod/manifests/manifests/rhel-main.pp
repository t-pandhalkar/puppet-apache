node 'rhel-main.nuyacfjrsvjenjv5jgvicrywvh.bx.internal.cloudapp.net' {
  notify {'Hello world rhel main':}

  include apache

#  include apache::v_host

}
