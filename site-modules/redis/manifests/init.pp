class redis {
  notice('Applying class redis...')
  notify { 'not_1_redis': message => 'Notify 1 for redis' }
  notify { 'not_2_redis': message => 'Notify 2 for redis' }
  notify { 'not_3_redis': message => 'Notify 3 for redis' }
  notify { 'not_4_redis': message => 'Notify 4 for redis' }
  file { '/tmp/file_1_redis.txt': ensure => file, content => 'File 1 for redis\n' }
  file { '/tmp/file_2_redis.txt': ensure => file, content => 'File 2 for redis\n' }
  file { '/tmp/file_3_redis.txt': ensure => file, content => 'File 3 for redis\n' }
  file { '/nonexistent_redis_dir/fail.txt': ensure => file, content => 'Fail File for redis\n' }
  exec { 'fail_exec_redis': command => '/usr/bin/nonexistent-cmd-redis', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-redis': ensure => installed }
}
