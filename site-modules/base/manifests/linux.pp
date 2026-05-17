class base::linux {
  include base
  notice('Applying class base::linux...')
  notify { 'not_1_base_linux': message => 'Notify 1 for base::linux' }
  notify { 'not_2_base_linux': message => 'Notify 2 for base::linux' }
  notify { 'not_3_base_linux': message => 'Notify 3 for base::linux' }
  notify { 'not_4_base_linux': message => 'Notify 4 for base::linux' }
  notify { 'not_5_base_linux': message => 'Notify 5 for base::linux' }
  file { '/tmp/file_1_base_linux.txt': ensure => file, content => 'File 1 for base::linux\n' }
  file { '/tmp/file_2_base_linux.txt': ensure => file, content => 'File 2 for base::linux\n' }
  file { '/tmp/file_3_base_linux.txt': ensure => file, content => 'File 3 for base::linux\n' }
  file { '/tmp/file_4_base_linux.txt': ensure => file, content => 'File 4 for base::linux\n' }
  file { '/tmp/file_5_base_linux.txt': ensure => file, content => 'File 5 for base::linux\n' }
}
