class mongodb {
  notice('Applying class mongodb...')
  notify { 'not_1_mongodb': message => 'Notify 1 for mongodb' }
  notify { 'not_2_mongodb': message => 'Notify 2 for mongodb' }
  notify { 'not_3_mongodb': message => 'Notify 3 for mongodb' }
  notify { 'not_4_mongodb': message => 'Notify 4 for mongodb' }
  notify { 'not_5_mongodb': message => 'Notify 5 for mongodb' }
  file { '/tmp/file_1_mongodb.txt': ensure => file, content => 'File 1 for mongodb\n' }
  file { '/tmp/file_2_mongodb.txt': ensure => file, content => 'File 2 for mongodb\n' }
  file { '/tmp/file_3_mongodb.txt': ensure => file, content => 'File 3 for mongodb\n' }
  file { '/tmp/file_4_mongodb.txt': ensure => file, content => 'File 4 for mongodb\n' }
  file { '/tmp/file_5_mongodb.txt': ensure => file, content => 'File 5 for mongodb\n' }
}
