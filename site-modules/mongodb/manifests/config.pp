class mongodb::config {
  include mongodb
  notice('Applying class mongodb::config...')
  notify { 'not_1_mongodb_config': message => 'Notify 1 for mongodb::config' }
  notify { 'not_2_mongodb_config': message => 'Notify 2 for mongodb::config' }
  notify { 'not_3_mongodb_config': message => 'Notify 3 for mongodb::config' }
  notify { 'not_4_mongodb_config': message => 'Notify 4 for mongodb::config' }
  notify { 'not_5_mongodb_config': message => 'Notify 5 for mongodb::config' }
  file { '/tmp/file_1_mongodb_config.txt': ensure => file, content => 'File 1 for mongodb::config\n' }
  file { '/tmp/file_2_mongodb_config.txt': ensure => file, content => 'File 2 for mongodb::config\n' }
  file { '/tmp/file_3_mongodb_config.txt': ensure => file, content => 'File 3 for mongodb::config\n' }
  file { '/tmp/file_4_mongodb_config.txt': ensure => file, content => 'File 4 for mongodb::config\n' }
  file { '/tmp/file_5_mongodb_config.txt': ensure => file, content => 'File 5 for mongodb::config\n' }
}
