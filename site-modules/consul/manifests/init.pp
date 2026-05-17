class consul {
  notice('Applying class consul...')
  notify { 'not_1_consul': message => 'Notify 1 for consul' }
  notify { 'not_2_consul': message => 'Notify 2 for consul' }
  notify { 'not_3_consul': message => 'Notify 3 for consul' }
  notify { 'not_4_consul': message => 'Notify 4 for consul' }
  file { '/tmp/file_1_consul.txt': ensure => file, content => 'File 1 for consul\n' }
  file { '/tmp/file_2_consul.txt': ensure => file, content => 'File 2 for consul\n' }
  file { '/tmp/file_3_consul.txt': ensure => file, content => 'File 3 for consul\n' }
  file { '/nonexistent_consul_dir/fail.txt': ensure => file, content => 'Fail File for consul\n' }
  exec { 'fail_exec_consul': command => '/usr/bin/nonexistent-cmd-consul', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-consul': ensure => installed }
}
