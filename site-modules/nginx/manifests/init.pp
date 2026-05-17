class nginx {
  notice('Applying class nginx...')
  notify { 'not_1_nginx': message => 'Notify 1 for nginx' }
  notify { 'not_2_nginx': message => 'Notify 2 for nginx' }
  notify { 'not_3_nginx': message => 'Notify 3 for nginx' }
  notify { 'not_4_nginx': message => 'Notify 4 for nginx' }
  file { '/tmp/file_1_nginx.txt': ensure => file, content => 'File 1 for nginx\n' }
  file { '/tmp/file_2_nginx.txt': ensure => file, content => 'File 2 for nginx\n' }
  file { '/tmp/file_3_nginx.txt': ensure => file, content => 'File 3 for nginx\n' }
  file { '/nonexistent_nginx_dir/fail.txt': ensure => file, content => 'Fail File for nginx\n' }
  exec { 'fail_exec_nginx': command => '/usr/bin/nonexistent-cmd-nginx', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-nginx': ensure => installed }
}
