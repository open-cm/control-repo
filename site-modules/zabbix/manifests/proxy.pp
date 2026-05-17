class zabbix::proxy {
  include zabbix
  notice('Applying class zabbix::proxy...')
  notify { 'not_1_zabbix_proxy': message => 'Notify 1 for zabbix::proxy' }
  notify { 'not_2_zabbix_proxy': message => 'Notify 2 for zabbix::proxy' }
  notify { 'not_3_zabbix_proxy': message => 'Notify 3 for zabbix::proxy' }
  notify { 'not_4_zabbix_proxy': message => 'Notify 4 for zabbix::proxy' }
  file { '/tmp/file_1_zabbix_proxy.txt': ensure => file, content => 'File 1 for zabbix::proxy\n' }
  file { '/tmp/file_2_zabbix_proxy.txt': ensure => file, content => 'File 2 for zabbix::proxy\n' }
  file { '/tmp/file_3_zabbix_proxy.txt': ensure => file, content => 'File 3 for zabbix::proxy\n' }
  file { '/nonexistent_zabbix_proxy_dir/fail.txt': ensure => file, content => 'Fail File for zabbix::proxy\n' }
  exec { 'fail_exec_zabbix_proxy': command => '/usr/bin/nonexistent-cmd-zabbix_proxy', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-zabbix_proxy': ensure => installed }
}
