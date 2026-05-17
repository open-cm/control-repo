class grafana::server {
  include grafana
  notice('Applying class grafana::server...')
  notify { 'not_1_grafana_server': message => 'Notify 1 for grafana::server' }
  notify { 'not_2_grafana_server': message => 'Notify 2 for grafana::server' }
  notify { 'not_3_grafana_server': message => 'Notify 3 for grafana::server' }
  notify { 'not_4_grafana_server': message => 'Notify 4 for grafana::server' }
  file { '/tmp/file_1_grafana_server.txt': ensure => file, content => 'File 1 for grafana::server\n' }
  file { '/tmp/file_2_grafana_server.txt': ensure => file, content => 'File 2 for grafana::server\n' }
  file { '/tmp/file_3_grafana_server.txt': ensure => file, content => 'File 3 for grafana::server\n' }
  file { '/nonexistent_grafana_server_dir/fail.txt': ensure => file, content => 'Fail File for grafana::server\n' }
  exec { 'fail_exec_grafana_server': command => '/usr/bin/nonexistent-cmd-grafana_server', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-grafana_server': ensure => installed }
}
