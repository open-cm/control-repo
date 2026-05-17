class redis {
  notice('Setting up Redis...')
  # Intentional failure: try to create a file in a non-existent folder
  file { '/nonexistent_redis_dir/redis.conf':
    ensure  => file,
    content => "redis_fail\n",
  }
}
