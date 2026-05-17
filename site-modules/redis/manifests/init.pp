class redis {
  notice('Setting up Redis...')
  # Intentional failure: execute a non-existent command
  exec { 'fail_redis_exec':
    command => '/usr/bin/nonexistent-command-redis-failure',
    path    => ['/bin', '/usr/bin'],
  }
}

