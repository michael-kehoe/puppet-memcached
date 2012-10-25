class { 'memcached':
  max_memory      => '256',
  max_connections => '8192',
  lock_memory     => false,
}
