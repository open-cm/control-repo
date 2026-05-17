class jenkins::agent {
  include jenkins
  notice('Applying class jenkins::agent...')
  notify { 'not_1_jenkins_agent': message => 'Notify 1 for jenkins::agent' }
  notify { 'not_2_jenkins_agent': message => 'Notify 2 for jenkins::agent' }
  notify { 'not_3_jenkins_agent': message => 'Notify 3 for jenkins::agent' }
  notify { 'not_4_jenkins_agent': message => 'Notify 4 for jenkins::agent' }
  notify { 'not_5_jenkins_agent': message => 'Notify 5 for jenkins::agent' }
  file { '/tmp/file_1_jenkins_agent.txt': ensure => file, content => 'File 1 for jenkins::agent\n' }
  file { '/tmp/file_2_jenkins_agent.txt': ensure => file, content => 'File 2 for jenkins::agent\n' }
  file { '/tmp/file_3_jenkins_agent.txt': ensure => file, content => 'File 3 for jenkins::agent\n' }
  file { '/tmp/file_4_jenkins_agent.txt': ensure => file, content => 'File 4 for jenkins::agent\n' }
  file { '/tmp/file_5_jenkins_agent.txt': ensure => file, content => 'File 5 for jenkins::agent\n' }
}
