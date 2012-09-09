[puppet-memcached](https://github.com/stankevich/puppet-memcached)
======

Puppet module for installing and managing Memcached.

## Usage

### memcached

Installs and manages Memcached.

**ram** — Maximum amount of RAM to use, in megs. Default: 512

    class { 'memcached':
      ram => '256',
    }

## Authors

[Sergey Stankevich](https://github.com/stankevich)
