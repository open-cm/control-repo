class harbor::core {
  include harbor
  notice('Applying class harbor::core...')
  notify { 'not_1_harbor_core': message => 'Notify 1 for harbor::core' }
  notify { 'not_2_harbor_core': message => 'Notify 2 for harbor::core' }
  notify { 'not_3_harbor_core': message => 'Notify 3 for harbor::core' }
  notify { 'not_4_harbor_core': message => 'Notify 4 for harbor::core' }
  notify { 'not_5_harbor_core': message => 'Notify 5 for harbor::core' }
  file { '/tmp/file_1_harbor_core.txt': ensure => file, content => 'File 1 for harbor::core\n' }
  file { '/tmp/file_2_harbor_core.txt': ensure => file, content => 'File 2 for harbor::core\n' }
  file { '/tmp/file_3_harbor_core.txt': ensure => file, content => 'File 3 for harbor::core\n' }
  file { '/tmp/file_4_harbor_core.txt': ensure => file, content => 'File 4 for harbor::core\n' }
  file { '/tmp/file_5_harbor_core.txt': ensure => file, content => 'File 5 for harbor::core\n' }
}
