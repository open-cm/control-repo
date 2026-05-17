class gitlab {
  notice('Applying class gitlab...')
  notify { 'not_1_gitlab': message => 'Notify 1 for gitlab' }
  notify { 'not_2_gitlab': message => 'Notify 2 for gitlab' }
  notify { 'not_3_gitlab': message => 'Notify 3 for gitlab' }
  notify { 'not_4_gitlab': message => 'Notify 4 for gitlab' }
  notify { 'not_5_gitlab': message => 'Notify 5 for gitlab' }
  file { '/tmp/file_1_gitlab.txt': ensure => file, content => 'File 1 for gitlab\n' }
  file { '/tmp/file_2_gitlab.txt': ensure => file, content => 'File 2 for gitlab\n' }
  file { '/tmp/file_3_gitlab.txt': ensure => file, content => 'File 3 for gitlab\n' }
  file { '/tmp/file_4_gitlab.txt': ensure => file, content => 'File 4 for gitlab\n' }
  file { '/tmp/file_5_gitlab.txt': ensure => file, content => 'File 5 for gitlab\n' }
}
