class memcached::config {

  service { 'memcached':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => false,
  }

  file { '/etc/memcached.conf':
    ensure  => present,
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => template('memcached/memcached.conf.erb'),
    notify  => Service['memcached'],
  }

}
