class base {
  notice('Applying class base...')
  notify { 'not_1_base': message => 'Notify 1 for base' }
  notify { 'not_2_base': message => 'Notify 2 for base' }
  notify { 'not_3_base': message => 'Notify 3 for base' }
  notify { 'not_4_base': message => 'Notify 4 for base' }
  notify { 'not_5_base': message => 'Notify 5 for base' }
  file { '/tmp/file_1_base.txt': ensure => file, content => 'File 1 for base\n' }
  file { '/tmp/file_2_base.txt': ensure => file, content => 'File 2 for base\n' }
  file { '/tmp/file_3_base.txt': ensure => file, content => 'File 3 for base\n' }
  file { '/tmp/file_4_base.txt': ensure => file, content => 'File 4 for base\n' }
  file { '/tmp/file_5_base.txt': ensure => file, content => 'File 5 for base\n' }
}
