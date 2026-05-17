class nextcloud::app {
  include nextcloud
  notice('Applying class nextcloud::app...')
  notify { 'not_1_nextcloud_app': message => 'Notify 1 for nextcloud::app' }
  notify { 'not_2_nextcloud_app': message => 'Notify 2 for nextcloud::app' }
  notify { 'not_3_nextcloud_app': message => 'Notify 3 for nextcloud::app' }
  notify { 'not_4_nextcloud_app': message => 'Notify 4 for nextcloud::app' }
  notify { 'not_5_nextcloud_app': message => 'Notify 5 for nextcloud::app' }
  file { '/tmp/file_1_nextcloud_app.txt': ensure => file, content => 'File 1 for nextcloud::app\n' }
  file { '/tmp/file_2_nextcloud_app.txt': ensure => file, content => 'File 2 for nextcloud::app\n' }
  file { '/tmp/file_3_nextcloud_app.txt': ensure => file, content => 'File 3 for nextcloud::app\n' }
  file { '/tmp/file_4_nextcloud_app.txt': ensure => file, content => 'File 4 for nextcloud::app\n' }
  file { '/tmp/file_5_nextcloud_app.txt': ensure => file, content => 'File 5 for nextcloud::app\n' }
}
