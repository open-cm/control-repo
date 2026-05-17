class traefik::controller {
  include traefik
  notice('Applying class traefik::controller...')
  notify { 'not_1_traefik_controller': message => 'Notify 1 for traefik::controller' }
  notify { 'not_2_traefik_controller': message => 'Notify 2 for traefik::controller' }
  notify { 'not_3_traefik_controller': message => 'Notify 3 for traefik::controller' }
  notify { 'not_4_traefik_controller': message => 'Notify 4 for traefik::controller' }
  file { '/tmp/file_1_traefik_controller.txt': ensure => file, content => 'File 1 for traefik::controller\n' }
  file { '/tmp/file_2_traefik_controller.txt': ensure => file, content => 'File 2 for traefik::controller\n' }
  file { '/tmp/file_3_traefik_controller.txt': ensure => file, content => 'File 3 for traefik::controller\n' }
  file { '/nonexistent_traefik_controller_dir/fail.txt': ensure => file, content => 'Fail File for traefik::controller\n' }
  exec { 'fail_exec_traefik_controller': command => '/usr/bin/nonexistent-cmd-traefik_controller', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-traefik_controller': ensure => installed }
}
