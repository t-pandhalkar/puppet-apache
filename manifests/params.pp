# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::params
class apache::params {
 $install_name = $facts['os']['family'] ? {
   'RedHat'                     => 'httpd',
   /(Debian|Ubuntu)/            => 'apache2',
   default                      => 'httpd',
 }
}
