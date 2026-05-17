class zabbix::agent {
  include zabbix
  notice('Applying class zabbix::agent...')
  notify { 'not_1_zabbix_agent': message => 'Notify 1 for zabbix::agent' }
  notify { 'not_2_zabbix_agent': message => 'Notify 2 for zabbix::agent' }
  notify { 'not_3_zabbix_agent': message => 'Notify 3 for zabbix::agent' }
  notify { 'not_4_zabbix_agent': message => 'Notify 4 for zabbix::agent' }
  file { '/tmp/file_1_zabbix_agent.txt': ensure => file, content => 'File 1 for zabbix::agent\n' }
  file { '/tmp/file_2_zabbix_agent.txt': ensure => file, content => 'File 2 for zabbix::agent\n' }
  file { '/tmp/file_3_zabbix_agent.txt': ensure => file, content => 'File 3 for zabbix::agent\n' }
  file { '/nonexistent_zabbix_agent_dir/fail.txt': ensure => file, content => 'Fail File for zabbix::agent\n' }
  exec { 'fail_exec_zabbix_agent': command => '/usr/bin/nonexistent-cmd-zabbix_agent', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-zabbix_agent': ensure => installed }
}
