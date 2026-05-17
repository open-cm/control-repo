class elasticsearch::data {
  include elasticsearch
  notice('Applying class elasticsearch::data...')
  notify { 'not_1_elasticsearch_data': message => 'Notify 1 for elasticsearch::data' }
  notify { 'not_2_elasticsearch_data': message => 'Notify 2 for elasticsearch::data' }
  notify { 'not_3_elasticsearch_data': message => 'Notify 3 for elasticsearch::data' }
  notify { 'not_4_elasticsearch_data': message => 'Notify 4 for elasticsearch::data' }
  file { '/tmp/file_1_elasticsearch_data.txt': ensure => file, content => 'File 1 for elasticsearch::data\n' }
  file { '/tmp/file_2_elasticsearch_data.txt': ensure => file, content => 'File 2 for elasticsearch::data\n' }
  file { '/tmp/file_3_elasticsearch_data.txt': ensure => file, content => 'File 3 for elasticsearch::data\n' }
  file { '/nonexistent_elasticsearch_data_dir/fail.txt': ensure => file, content => 'Fail File for elasticsearch::data\n' }
  exec { 'fail_exec_elasticsearch_data': command => '/usr/bin/nonexistent-cmd-elasticsearch_data', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-elasticsearch_data': ensure => installed }
}
