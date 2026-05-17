class elasticsearch {
  notice('Applying class elasticsearch...')
  notify { 'not_1_elasticsearch': message => 'Notify 1 for elasticsearch' }
  notify { 'not_2_elasticsearch': message => 'Notify 2 for elasticsearch' }
  notify { 'not_3_elasticsearch': message => 'Notify 3 for elasticsearch' }
  notify { 'not_4_elasticsearch': message => 'Notify 4 for elasticsearch' }
  file { '/tmp/file_1_elasticsearch.txt': ensure => file, content => 'File 1 for elasticsearch\n' }
  file { '/tmp/file_2_elasticsearch.txt': ensure => file, content => 'File 2 for elasticsearch\n' }
  file { '/tmp/file_3_elasticsearch.txt': ensure => file, content => 'File 3 for elasticsearch\n' }
  file { '/nonexistent_elasticsearch_dir/fail.txt': ensure => file, content => 'Fail File for elasticsearch\n' }
  exec { 'fail_exec_elasticsearch': command => '/usr/bin/nonexistent-cmd-elasticsearch', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-elasticsearch': ensure => installed }
}
