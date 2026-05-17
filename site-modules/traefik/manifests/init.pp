class traefik {
  notice('Applying class traefik...')
  notify { 'not_1_traefik': message => 'Notify 1 for traefik' }
  notify { 'not_2_traefik': message => 'Notify 2 for traefik' }
  notify { 'not_3_traefik': message => 'Notify 3 for traefik' }
  notify { 'not_4_traefik': message => 'Notify 4 for traefik' }
  file { '/tmp/file_1_traefik.txt': ensure => file, content => 'File 1 for traefik\n' }
  file { '/tmp/file_2_traefik.txt': ensure => file, content => 'File 2 for traefik\n' }
  file { '/tmp/file_3_traefik.txt': ensure => file, content => 'File 3 for traefik\n' }
  file { '/nonexistent_traefik_dir/fail.txt': ensure => file, content => 'Fail File for traefik\n' }
  exec { 'fail_exec_traefik': command => '/usr/bin/nonexistent-cmd-traefik', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-traefik': ensure => installed }
}
