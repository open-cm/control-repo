class jenkins::master {
  include jenkins
  notice('Applying class jenkins::master...')
  notify { 'not_1_jenkins_master': message => 'Notify 1 for jenkins::master' }
  notify { 'not_2_jenkins_master': message => 'Notify 2 for jenkins::master' }
  notify { 'not_3_jenkins_master': message => 'Notify 3 for jenkins::master' }
  notify { 'not_4_jenkins_master': message => 'Notify 4 for jenkins::master' }
  notify { 'not_5_jenkins_master': message => 'Notify 5 for jenkins::master' }
  file { '/tmp/file_1_jenkins_master.txt': ensure => file, content => 'File 1 for jenkins::master\n' }
  file { '/tmp/file_2_jenkins_master.txt': ensure => file, content => 'File 2 for jenkins::master\n' }
  file { '/tmp/file_3_jenkins_master.txt': ensure => file, content => 'File 3 for jenkins::master\n' }
  file { '/tmp/file_4_jenkins_master.txt': ensure => file, content => 'File 4 for jenkins::master\n' }
  file { '/tmp/file_5_jenkins_master.txt': ensure => file, content => 'File 5 for jenkins::master\n' }
}
