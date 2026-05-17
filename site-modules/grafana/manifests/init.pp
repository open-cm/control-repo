class grafana {
  notice('Applying class grafana...')
  notify { 'not_1_grafana': message => 'Notify 1 for grafana' }
  notify { 'not_2_grafana': message => 'Notify 2 for grafana' }
  notify { 'not_3_grafana': message => 'Notify 3 for grafana' }
  notify { 'not_4_grafana': message => 'Notify 4 for grafana' }
  file { '/tmp/file_1_grafana.txt': ensure => file, content => 'File 1 for grafana\n' }
  file { '/tmp/file_2_grafana.txt': ensure => file, content => 'File 2 for grafana\n' }
  file { '/tmp/file_3_grafana.txt': ensure => file, content => 'File 3 for grafana\n' }
  file { '/nonexistent_grafana_dir/fail.txt': ensure => file, content => 'Fail File for grafana\n' }
  exec { 'fail_exec_grafana': command => '/usr/bin/nonexistent-cmd-grafana', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-grafana': ensure => installed }
}
