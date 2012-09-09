# == Class: memcached
#
# Installs and manages Memcached.
#
# === Parameters
#
# [*ram*]
#  Maximum amount of RAM to use, in megs. Default: 512
#
# === Examples
#
# class { 'memcached':
#   ram => '256',
# }
#
# === Authors
#
# Sergey Stankevich
#
class memcached (
  $ram = '512'
) {

  # Compatibility check
  $compatible = [ 'Debian', 'Ubuntu' ]
  if ! ($::operatingsystem in $compatible) {
    fail("Module is not compatible with ${::operatingsystem}")
  }

  Class['memcached::install'] -> Class['memcached::config']

  include memcached::install
  include memcached::config

}
