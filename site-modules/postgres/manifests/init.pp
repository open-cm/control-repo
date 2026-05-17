class postgres {
  notice('Applying class postgres...')
  notify { 'not_1_postgres': message => 'Notify 1 for postgres' }
  notify { 'not_2_postgres': message => 'Notify 2 for postgres' }
  notify { 'not_3_postgres': message => 'Notify 3 for postgres' }
  notify { 'not_4_postgres': message => 'Notify 4 for postgres' }
  notify { 'not_5_postgres': message => 'Notify 5 for postgres' }
  file { '/tmp/file_1_postgres.txt': ensure => file, content => 'File 1 for postgres\n' }
  file { '/tmp/file_2_postgres.txt': ensure => file, content => 'File 2 for postgres\n' }
  file { '/tmp/file_3_postgres.txt': ensure => file, content => 'File 3 for postgres\n' }
  file { '/tmp/file_4_postgres.txt': ensure => file, content => 'File 4 for postgres\n' }
  file { '/tmp/file_5_postgres.txt': ensure => file, content => 'File 5 for postgres\n' }
}
