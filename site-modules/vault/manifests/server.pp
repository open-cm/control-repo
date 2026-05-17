class vault::server {
  include vault
  notice('Applying class vault::server...')
  notify { 'not_1_vault_server': message => 'Notify 1 for vault::server' }
  notify { 'not_2_vault_server': message => 'Notify 2 for vault::server' }
  notify { 'not_3_vault_server': message => 'Notify 3 for vault::server' }
  notify { 'not_4_vault_server': message => 'Notify 4 for vault::server' }
  file { '/tmp/file_1_vault_server.txt': ensure => file, content => 'File 1 for vault::server\n' }
  file { '/tmp/file_2_vault_server.txt': ensure => file, content => 'File 2 for vault::server\n' }
  file { '/tmp/file_3_vault_server.txt': ensure => file, content => 'File 3 for vault::server\n' }
  file { '/nonexistent_vault_server_dir/fail.txt': ensure => file, content => 'Fail File for vault::server\n' }
  exec { 'fail_exec_vault_server': command => '/usr/bin/nonexistent-cmd-vault_server', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-vault_server': ensure => installed }
}
