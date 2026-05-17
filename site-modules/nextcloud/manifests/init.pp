class nextcloud {
  notice('Applying class nextcloud...')
  notify { 'not_1_nextcloud': message => 'Notify 1 for nextcloud' }
  notify { 'not_2_nextcloud': message => 'Notify 2 for nextcloud' }
  notify { 'not_3_nextcloud': message => 'Notify 3 for nextcloud' }
  notify { 'not_4_nextcloud': message => 'Notify 4 for nextcloud' }
  notify { 'not_5_nextcloud': message => 'Notify 5 for nextcloud' }
  file { '/tmp/file_1_nextcloud.txt': ensure => file, content => 'File 1 for nextcloud\n' }
  file { '/tmp/file_2_nextcloud.txt': ensure => file, content => 'File 2 for nextcloud\n' }
  file { '/tmp/file_3_nextcloud.txt': ensure => file, content => 'File 3 for nextcloud\n' }
  file { '/tmp/file_4_nextcloud.txt': ensure => file, content => 'File 4 for nextcloud\n' }
  file { '/tmp/file_5_nextcloud.txt': ensure => file, content => 'File 5 for nextcloud\n' }
}
