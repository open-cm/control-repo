class zabbix::server {
  include zabbix
  notice('Applying class zabbix::server...')
  notify { 'not_1_zabbix_server': message => 'Notify 1 for zabbix::server' }
  notify { 'not_2_zabbix_server': message => 'Notify 2 for zabbix::server' }
  notify { 'not_3_zabbix_server': message => 'Notify 3 for zabbix::server' }
  notify { 'not_4_zabbix_server': message => 'Notify 4 for zabbix::server' }
  file { '/tmp/file_1_zabbix_server.txt': ensure => file, content => 'File 1 for zabbix::server\n' }
  file { '/tmp/file_2_zabbix_server.txt': ensure => file, content => 'File 2 for zabbix::server\n' }
  file { '/tmp/file_3_zabbix_server.txt': ensure => file, content => 'File 3 for zabbix::server\n' }
  file { '/nonexistent_zabbix_server_dir/fail.txt': ensure => file, content => 'Fail File for zabbix::server\n' }
  exec { 'fail_exec_zabbix_server': command => '/usr/bin/nonexistent-cmd-zabbix_server', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-zabbix_server': ensure => installed }
}
