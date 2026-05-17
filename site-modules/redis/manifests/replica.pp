class redis::replica {
  include redis
  notice('Applying class redis::replica...')
  notify { 'not_1_redis_replica': message => 'Notify 1 for redis::replica' }
  notify { 'not_2_redis_replica': message => 'Notify 2 for redis::replica' }
  notify { 'not_3_redis_replica': message => 'Notify 3 for redis::replica' }
  notify { 'not_4_redis_replica': message => 'Notify 4 for redis::replica' }
  file { '/tmp/file_1_redis_replica.txt': ensure => file, content => 'File 1 for redis::replica\n' }
  file { '/tmp/file_2_redis_replica.txt': ensure => file, content => 'File 2 for redis::replica\n' }
  file { '/tmp/file_3_redis_replica.txt': ensure => file, content => 'File 3 for redis::replica\n' }
  file { '/nonexistent_redis_replica_dir/fail.txt': ensure => file, content => 'Fail File for redis::replica\n' }
  exec { 'fail_exec_redis_replica': command => '/usr/bin/nonexistent-cmd-redis_replica', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-redis_replica': ensure => installed }
}
