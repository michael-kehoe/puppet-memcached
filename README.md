[puppet-memcached](https://github.com/stankevich/puppet-memcached)
======

Puppet module for installing and managing Memcached.

## Usage

### memcached

Installs and manages Memcached.

**bind_local** — Listen on localhost only. Default: false

**max_memory** — Maximum amount of memory to use, in megs. Default: 512

**max_connections** — Number of simultaneous incoming connections. Default: 1024

**lock_memory** — Lock down all paged memory. Default: true

	class { 'memcached':
	  bind_local      => true,
	  max_memory      => '256',
	  max_connections => '8192',
	  lock_memory     => false,
	}

## Authors

[Sergey Stankevich](https://github.com/stankevich)
