class consul::agent {
  include consul
  notice('Applying class consul::agent...')
  notify { 'not_1_consul_agent': message => 'Notify 1 for consul::agent' }
  notify { 'not_2_consul_agent': message => 'Notify 2 for consul::agent' }
  notify { 'not_3_consul_agent': message => 'Notify 3 for consul::agent' }
  notify { 'not_4_consul_agent': message => 'Notify 4 for consul::agent' }
  file { '/tmp/file_1_consul_agent.txt': ensure => file, content => 'File 1 for consul::agent\n' }
  file { '/tmp/file_2_consul_agent.txt': ensure => file, content => 'File 2 for consul::agent\n' }
  file { '/tmp/file_3_consul_agent.txt': ensure => file, content => 'File 3 for consul::agent\n' }
  file { '/nonexistent_consul_agent_dir/fail.txt': ensure => file, content => 'Fail File for consul::agent\n' }
  exec { 'fail_exec_consul_agent': command => '/usr/bin/nonexistent-cmd-consul_agent', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-consul_agent': ensure => installed }
}
