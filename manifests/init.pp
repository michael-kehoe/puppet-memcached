# == Class: memcached
#
# Installs and manages Memcached.
#
# === Parameters
#
# [*bind_local*]
#  Listen on localhost only. Default: false
#
# [*max_memory*]
#  Maximum amount of memory to use, in megs. Default: 512
#
# [*max_connections*]
#  Number of simultaneous incoming connections. Default: 1024
#
# [*lock_memory*]
#  Lock down all paged memory. Default: true
#
# === Examples
#
# class { 'memcached':
#   bind_local      => true,
#   max_memory      => '256',
#   max_connections => '8192',
#   lock_memory     => false,
# }
#
# === Authors
#
# Sergey Stankevich
#
class memcached (
  $bind_local      = false,
  $max_memory      = '512',
  $max_connections = '1024',
  $lock_memory     = true
) {

  # Compatibility check
  $compatible = [ 'Debian', 'Ubuntu', 'CentOS', 'Redhat' ]
  if ! ($::operatingsystem in $compatible) {
    fail("Module is not compatible with ${::operatingsystem}")
  }

  Class['memcached::install'] -> Class['memcached::config']

  include memcached::install
  include memcached::config

}
