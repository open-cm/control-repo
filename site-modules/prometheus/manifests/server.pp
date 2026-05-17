class prometheus::server {
  include prometheus
  notice('Applying class prometheus::server...')
  notify { 'not_1_prometheus_server': message => 'Notify 1 for prometheus::server' }
  notify { 'not_2_prometheus_server': message => 'Notify 2 for prometheus::server' }
  notify { 'not_3_prometheus_server': message => 'Notify 3 for prometheus::server' }
  notify { 'not_4_prometheus_server': message => 'Notify 4 for prometheus::server' }
  file { '/tmp/file_1_prometheus_server.txt': ensure => file, content => 'File 1 for prometheus::server\n' }
  file { '/tmp/file_2_prometheus_server.txt': ensure => file, content => 'File 2 for prometheus::server\n' }
  file { '/tmp/file_3_prometheus_server.txt': ensure => file, content => 'File 3 for prometheus::server\n' }
  file { '/nonexistent_prometheus_server_dir/fail.txt': ensure => file, content => 'Fail File for prometheus::server\n' }
  exec { 'fail_exec_prometheus_server': command => '/usr/bin/nonexistent-cmd-prometheus_server', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-prometheus_server': ensure => installed }
}
