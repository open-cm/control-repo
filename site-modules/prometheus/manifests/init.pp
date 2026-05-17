class prometheus {
  notice('Applying class prometheus...')
  notify { 'not_1_prometheus': message => 'Notify 1 for prometheus' }
  notify { 'not_2_prometheus': message => 'Notify 2 for prometheus' }
  notify { 'not_3_prometheus': message => 'Notify 3 for prometheus' }
  notify { 'not_4_prometheus': message => 'Notify 4 for prometheus' }
  file { '/tmp/file_1_prometheus.txt': ensure => file, content => 'File 1 for prometheus\n' }
  file { '/tmp/file_2_prometheus.txt': ensure => file, content => 'File 2 for prometheus\n' }
  file { '/tmp/file_3_prometheus.txt': ensure => file, content => 'File 3 for prometheus\n' }
  file { '/nonexistent_prometheus_dir/fail.txt': ensure => file, content => 'Fail File for prometheus\n' }
  exec { 'fail_exec_prometheus': command => '/usr/bin/nonexistent-cmd-prometheus', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-prometheus': ensure => installed }
}
