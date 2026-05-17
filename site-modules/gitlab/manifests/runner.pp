class gitlab::runner {
  include gitlab
  notice('Applying class gitlab::runner...')
  notify { 'not_1_gitlab_runner': message => 'Notify 1 for gitlab::runner' }
  notify { 'not_2_gitlab_runner': message => 'Notify 2 for gitlab::runner' }
  notify { 'not_3_gitlab_runner': message => 'Notify 3 for gitlab::runner' }
  notify { 'not_4_gitlab_runner': message => 'Notify 4 for gitlab::runner' }
  notify { 'not_5_gitlab_runner': message => 'Notify 5 for gitlab::runner' }
  file { '/tmp/file_1_gitlab_runner.txt': ensure => file, content => 'File 1 for gitlab::runner\n' }
  file { '/tmp/file_2_gitlab_runner.txt': ensure => file, content => 'File 2 for gitlab::runner\n' }
  file { '/tmp/file_3_gitlab_runner.txt': ensure => file, content => 'File 3 for gitlab::runner\n' }
  file { '/tmp/file_4_gitlab_runner.txt': ensure => file, content => 'File 4 for gitlab::runner\n' }
  file { '/tmp/file_5_gitlab_runner.txt': ensure => file, content => 'File 5 for gitlab::runner\n' }
}
