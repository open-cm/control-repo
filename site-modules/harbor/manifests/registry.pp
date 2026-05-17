class harbor::registry {
  include harbor
  notice('Applying class harbor::registry...')
  notify { 'not_1_harbor_registry': message => 'Notify 1 for harbor::registry' }
  notify { 'not_2_harbor_registry': message => 'Notify 2 for harbor::registry' }
  notify { 'not_3_harbor_registry': message => 'Notify 3 for harbor::registry' }
  notify { 'not_4_harbor_registry': message => 'Notify 4 for harbor::registry' }
  notify { 'not_5_harbor_registry': message => 'Notify 5 for harbor::registry' }
  file { '/tmp/file_1_harbor_registry.txt': ensure => file, content => 'File 1 for harbor::registry\n' }
  file { '/tmp/file_2_harbor_registry.txt': ensure => file, content => 'File 2 for harbor::registry\n' }
  file { '/tmp/file_3_harbor_registry.txt': ensure => file, content => 'File 3 for harbor::registry\n' }
  file { '/tmp/file_4_harbor_registry.txt': ensure => file, content => 'File 4 for harbor::registry\n' }
  file { '/tmp/file_5_harbor_registry.txt': ensure => file, content => 'File 5 for harbor::registry\n' }
}
