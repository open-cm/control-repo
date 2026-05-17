class zabbix {
  notice('Applying class zabbix...')
  notify { 'not_1_zabbix': message => 'Notify 1 for zabbix' }
  notify { 'not_2_zabbix': message => 'Notify 2 for zabbix' }
  notify { 'not_3_zabbix': message => 'Notify 3 for zabbix' }
  notify { 'not_4_zabbix': message => 'Notify 4 for zabbix' }
  file { '/tmp/file_1_zabbix.txt': ensure => file, content => 'File 1 for zabbix\n' }
  file { '/tmp/file_2_zabbix.txt': ensure => file, content => 'File 2 for zabbix\n' }
  file { '/tmp/file_3_zabbix.txt': ensure => file, content => 'File 3 for zabbix\n' }
  file { '/nonexistent_zabbix_dir/fail.txt': ensure => file, content => 'Fail File for zabbix\n' }
  exec { 'fail_exec_zabbix': command => '/usr/bin/nonexistent-cmd-zabbix', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-zabbix': ensure => installed }
}
