class gitlab::app {
  include gitlab
  notice('Applying class gitlab::app...')
  notify { 'not_1_gitlab_app': message => 'Notify 1 for gitlab::app' }
  notify { 'not_2_gitlab_app': message => 'Notify 2 for gitlab::app' }
  notify { 'not_3_gitlab_app': message => 'Notify 3 for gitlab::app' }
  notify { 'not_4_gitlab_app': message => 'Notify 4 for gitlab::app' }
  notify { 'not_5_gitlab_app': message => 'Notify 5 for gitlab::app' }
  file { '/tmp/file_1_gitlab_app.txt': ensure => file, content => 'File 1 for gitlab::app\n' }
  file { '/tmp/file_2_gitlab_app.txt': ensure => file, content => 'File 2 for gitlab::app\n' }
  file { '/tmp/file_3_gitlab_app.txt': ensure => file, content => 'File 3 for gitlab::app\n' }
  file { '/tmp/file_4_gitlab_app.txt': ensure => file, content => 'File 4 for gitlab::app\n' }
  file { '/tmp/file_5_gitlab_app.txt': ensure => file, content => 'File 5 for gitlab::app\n' }
}
