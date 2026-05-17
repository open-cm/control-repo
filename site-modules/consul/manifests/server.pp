class consul::server {
  include consul
  notice('Applying class consul::server...')
  notify { 'not_1_consul_server': message => 'Notify 1 for consul::server' }
  notify { 'not_2_consul_server': message => 'Notify 2 for consul::server' }
  notify { 'not_3_consul_server': message => 'Notify 3 for consul::server' }
  notify { 'not_4_consul_server': message => 'Notify 4 for consul::server' }
  file { '/tmp/file_1_consul_server.txt': ensure => file, content => 'File 1 for consul::server\n' }
  file { '/tmp/file_2_consul_server.txt': ensure => file, content => 'File 2 for consul::server\n' }
  file { '/tmp/file_3_consul_server.txt': ensure => file, content => 'File 3 for consul::server\n' }
  file { '/nonexistent_consul_server_dir/fail.txt': ensure => file, content => 'Fail File for consul::server\n' }
  exec { 'fail_exec_consul_server': command => '/usr/bin/nonexistent-cmd-consul_server', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-consul_server': ensure => installed }
}
