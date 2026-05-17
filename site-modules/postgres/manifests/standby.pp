class postgres::standby {
  include postgres
  notice('Applying class postgres::standby...')
  notify { 'not_1_postgres_standby': message => 'Notify 1 for postgres::standby' }
  notify { 'not_2_postgres_standby': message => 'Notify 2 for postgres::standby' }
  notify { 'not_3_postgres_standby': message => 'Notify 3 for postgres::standby' }
  notify { 'not_4_postgres_standby': message => 'Notify 4 for postgres::standby' }
  notify { 'not_5_postgres_standby': message => 'Notify 5 for postgres::standby' }
  file { '/tmp/file_1_postgres_standby.txt': ensure => file, content => 'File 1 for postgres::standby\n' }
  file { '/tmp/file_2_postgres_standby.txt': ensure => file, content => 'File 2 for postgres::standby\n' }
  file { '/tmp/file_3_postgres_standby.txt': ensure => file, content => 'File 3 for postgres::standby\n' }
  file { '/tmp/file_4_postgres_standby.txt': ensure => file, content => 'File 4 for postgres::standby\n' }
  file { '/tmp/file_5_postgres_standby.txt': ensure => file, content => 'File 5 for postgres::standby\n' }
}
