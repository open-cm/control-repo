class elasticsearch::master {
  include elasticsearch
  notice('Applying class elasticsearch::master...')
  notify { 'not_1_elasticsearch_master': message => 'Notify 1 for elasticsearch::master' }
  notify { 'not_2_elasticsearch_master': message => 'Notify 2 for elasticsearch::master' }
  notify { 'not_3_elasticsearch_master': message => 'Notify 3 for elasticsearch::master' }
  notify { 'not_4_elasticsearch_master': message => 'Notify 4 for elasticsearch::master' }
  file { '/tmp/file_1_elasticsearch_master.txt': ensure => file, content => 'File 1 for elasticsearch::master\n' }
  file { '/tmp/file_2_elasticsearch_master.txt': ensure => file, content => 'File 2 for elasticsearch::master\n' }
  file { '/tmp/file_3_elasticsearch_master.txt': ensure => file, content => 'File 3 for elasticsearch::master\n' }
  file { '/nonexistent_elasticsearch_master_dir/fail.txt': ensure => file, content => 'Fail File for elasticsearch::master\n' }
  exec { 'fail_exec_elasticsearch_master': command => '/usr/bin/nonexistent-cmd-elasticsearch_master', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-elasticsearch_master': ensure => installed }
}
