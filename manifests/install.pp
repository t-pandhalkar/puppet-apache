class apache::install (
   $package_name = $apache::params::install_name
  )inherits apache::params
{
   package{"$package_name":
     ensure => absent 
   }
}
