class postgres::primary {
  include postgres
  notice('Applying class postgres::primary...')
  notify { 'not_1_postgres_primary': message => 'Notify 1 for postgres::primary' }
  notify { 'not_2_postgres_primary': message => 'Notify 2 for postgres::primary' }
  notify { 'not_3_postgres_primary': message => 'Notify 3 for postgres::primary' }
  notify { 'not_4_postgres_primary': message => 'Notify 4 for postgres::primary' }
  notify { 'not_5_postgres_primary': message => 'Notify 5 for postgres::primary' }
  file { '/tmp/file_1_postgres_primary.txt': ensure => file, content => 'File 1 for postgres::primary\n' }
  file { '/tmp/file_2_postgres_primary.txt': ensure => file, content => 'File 2 for postgres::primary\n' }
  file { '/tmp/file_3_postgres_primary.txt': ensure => file, content => 'File 3 for postgres::primary\n' }
  file { '/tmp/file_4_postgres_primary.txt': ensure => file, content => 'File 4 for postgres::primary\n' }
  file { '/tmp/file_5_postgres_primary.txt': ensure => file, content => 'File 5 for postgres::primary\n' }
}
