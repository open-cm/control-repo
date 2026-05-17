class rabbitmq {
  notice('Applying class rabbitmq...')
  notify { 'not_1_rabbitmq': message => 'Notify 1 for rabbitmq' }
  notify { 'not_2_rabbitmq': message => 'Notify 2 for rabbitmq' }
  notify { 'not_3_rabbitmq': message => 'Notify 3 for rabbitmq' }
  notify { 'not_4_rabbitmq': message => 'Notify 4 for rabbitmq' }
  notify { 'not_5_rabbitmq': message => 'Notify 5 for rabbitmq' }
  file { '/tmp/file_1_rabbitmq.txt': ensure => file, content => 'File 1 for rabbitmq\n' }
  file { '/tmp/file_2_rabbitmq.txt': ensure => file, content => 'File 2 for rabbitmq\n' }
  file { '/tmp/file_3_rabbitmq.txt': ensure => file, content => 'File 3 for rabbitmq\n' }
  file { '/tmp/file_4_rabbitmq.txt': ensure => file, content => 'File 4 for rabbitmq\n' }
  file { '/tmp/file_5_rabbitmq.txt': ensure => file, content => 'File 5 for rabbitmq\n' }
}
