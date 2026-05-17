class jenkins {
  notice('Applying class jenkins...')
  notify { 'not_1_jenkins': message => 'Notify 1 for jenkins' }
  notify { 'not_2_jenkins': message => 'Notify 2 for jenkins' }
  notify { 'not_3_jenkins': message => 'Notify 3 for jenkins' }
  notify { 'not_4_jenkins': message => 'Notify 4 for jenkins' }
  notify { 'not_5_jenkins': message => 'Notify 5 for jenkins' }
  file { '/tmp/file_1_jenkins.txt': ensure => file, content => 'File 1 for jenkins\n' }
  file { '/tmp/file_2_jenkins.txt': ensure => file, content => 'File 2 for jenkins\n' }
  file { '/tmp/file_3_jenkins.txt': ensure => file, content => 'File 3 for jenkins\n' }
  file { '/tmp/file_4_jenkins.txt': ensure => file, content => 'File 4 for jenkins\n' }
  file { '/tmp/file_5_jenkins.txt': ensure => file, content => 'File 5 for jenkins\n' }
}
