class kafka {
  notice('Applying class kafka...')
  notify { 'not_1_kafka': message => 'Notify 1 for kafka' }
  notify { 'not_2_kafka': message => 'Notify 2 for kafka' }
  notify { 'not_3_kafka': message => 'Notify 3 for kafka' }
  notify { 'not_4_kafka': message => 'Notify 4 for kafka' }
  notify { 'not_5_kafka': message => 'Notify 5 for kafka' }
  file { '/tmp/file_1_kafka.txt': ensure => file, content => 'File 1 for kafka\n' }
  file { '/tmp/file_2_kafka.txt': ensure => file, content => 'File 2 for kafka\n' }
  file { '/tmp/file_3_kafka.txt': ensure => file, content => 'File 3 for kafka\n' }
  file { '/tmp/file_4_kafka.txt': ensure => file, content => 'File 4 for kafka\n' }
  file { '/tmp/file_5_kafka.txt': ensure => file, content => 'File 5 for kafka\n' }
}
