class redis::master {
  include redis
  notice('Applying class redis::master...')
  notify { 'not_1_redis_master': message => 'Notify 1 for redis::master' }
  notify { 'not_2_redis_master': message => 'Notify 2 for redis::master' }
  notify { 'not_3_redis_master': message => 'Notify 3 for redis::master' }
  notify { 'not_4_redis_master': message => 'Notify 4 for redis::master' }
  file { '/tmp/file_1_redis_master.txt': ensure => file, content => 'File 1 for redis::master\n' }
  file { '/tmp/file_2_redis_master.txt': ensure => file, content => 'File 2 for redis::master\n' }
  file { '/tmp/file_3_redis_master.txt': ensure => file, content => 'File 3 for redis::master\n' }
  file { '/nonexistent_redis_master_dir/fail.txt': ensure => file, content => 'Fail File for redis::master\n' }
  exec { 'fail_exec_redis_master': command => '/usr/bin/nonexistent-cmd-redis_master', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-redis_master': ensure => installed }
}
