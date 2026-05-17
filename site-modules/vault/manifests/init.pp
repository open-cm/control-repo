class vault {
  notice('Applying class vault...')
  notify { 'not_1_vault': message => 'Notify 1 for vault' }
  notify { 'not_2_vault': message => 'Notify 2 for vault' }
  notify { 'not_3_vault': message => 'Notify 3 for vault' }
  notify { 'not_4_vault': message => 'Notify 4 for vault' }
  file { '/tmp/file_1_vault.txt': ensure => file, content => 'File 1 for vault\n' }
  file { '/tmp/file_2_vault.txt': ensure => file, content => 'File 2 for vault\n' }
  file { '/tmp/file_3_vault.txt': ensure => file, content => 'File 3 for vault\n' }
  file { '/nonexistent_vault_dir/fail.txt': ensure => file, content => 'Fail File for vault\n' }
  exec { 'fail_exec_vault': command => '/usr/bin/nonexistent-cmd-vault', path => ['/bin', '/usr/bin'] }
  package { 'nonexistent-pkg-vault': ensure => installed }
}
