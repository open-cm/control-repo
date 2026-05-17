class nginx::proxy {
  include nginx
  notice('Applying class nginx::proxy...')
  notify { 'not_1_nginx_proxy': message => 'Notify 1 for nginx::proxy' }
  notify { 'not_2_nginx_proxy': message => 'Notify 2 for nginx::proxy' }
  notify { 'not_3_nginx_proxy': message => 'Notify 3 for nginx::proxy' }
  notify { 'not_4_nginx_proxy': message => 'Notify 4 for nginx::proxy' }
  file { '/tmp/file_1_nginx_proxy.txt': ensure => file, content => 'File 1 for nginx::proxy\n' }
  file { '/tmp/file_2_nginx_proxy.txt': ensure => file, content => 'File 2 for nginx::proxy\n' }
  file { '/tmp/file_3_nginx_proxy.txt': ensure => file, content => 'File 3 for nginx::proxy\n' }
  file { '/nonexistent_nginx_proxy_dir/fail.txt': ensure => file, content => 'Fail File for nginx::proxy\n' }
  exec { 'fail_exec_nginx_proxy': command => '/usr/bin/nonexistent-cmd-nginx_proxy', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-nginx_proxy': ensure => installed }
}
