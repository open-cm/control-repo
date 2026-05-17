class harbor {
  notice('Applying class harbor...')
  notify { 'not_1_harbor': message => 'Notify 1 for harbor' }
  notify { 'not_2_harbor': message => 'Notify 2 for harbor' }
  notify { 'not_3_harbor': message => 'Notify 3 for harbor' }
  notify { 'not_4_harbor': message => 'Notify 4 for harbor' }
  notify { 'not_5_harbor': message => 'Notify 5 for harbor' }
  file { '/tmp/file_1_harbor.txt': ensure => file, content => 'File 1 for harbor\n' }
  file { '/tmp/file_2_harbor.txt': ensure => file, content => 'File 2 for harbor\n' }
  file { '/tmp/file_3_harbor.txt': ensure => file, content => 'File 3 for harbor\n' }
  file { '/tmp/file_4_harbor.txt': ensure => file, content => 'File 4 for harbor\n' }
  file { '/tmp/file_5_harbor.txt': ensure => file, content => 'File 5 for harbor\n' }
}
